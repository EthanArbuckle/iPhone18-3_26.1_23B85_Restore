@interface LoggingSupport_OSLogCoder
- (void)_initBlob;
- (void)appendBytes:(const void *)bytes length:(unint64_t)length;
- (void)setPublic;
@end

@implementation LoggingSupport_OSLogCoder

- (void)appendBytes:(const void *)bytes length:(unint64_t)length
{
  fmt_cmd = self->_fmt_cmd;
  if ((*fmt_cmd & 7) == 0)
  {
    *fmt_cmd |= 1u;
  }

  if (!self->_initialized)
  {
    [(LoggingSupport_OSLogCoder *)self _initBlob];
  }

  ob = self->_ob;
  if (ob)
  {
    written = self->_written;
    maxsz = self->_maxsz;
    v11 = written + length;
    if (__CFADD__(written, length) || (!(v11 >> 16) ? (v12 = v11 >= maxsz) : (v12 = 1), v12))
    {
      self->_truncated = 1;
      LOWORD(v11) = maxsz;
    }

    if ((ob->ob_flags & 2) == 0)
    {
      v13 = v11 - written;
      ob_len = ob->ob_len;
      if (v13 > ob->ob_size - ob_len - !ob->ob_binary)
      {
        os_trace_blob_add_slow(ob, bytes, v13);
      }

      else
      {
        memcpy(&ob->var0.ob_b[ob_len], bytes, v13);
        v15 = ob->ob_len + v13;
        ob->ob_len = v15;
        if (!ob->ob_binary)
        {
          ob->var0.ob_b[v15] = 0;
        }
      }
    }

    self->_written = v11;
  }
}

- (void)setPublic
{
  fmt_cmd = self->_fmt_cmd;
  if (*fmt_cmd)
  {
    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: Cannot force Public over Private";
    __break(1u);
  }

  else
  {
    *fmt_cmd |= 2u;
  }
}

- (void)_initBlob
{
  v4 = *MEMORY[0x277D85DE8];
  if ((*self->_fmt_cmd & 7) == 0)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (privacy_flags2opt[*self->_fmt_cmd & 7] > self->_privacy_level)
  {
    if (self->_mask)
    {
      self->_ob_mask.var0.ob_b = self->_maskbuf;
      p_ob_mask = &self->_ob_mask;
      *&self->_ob_mask.ob_len = 0x8000000000;
      self->_ob_mask.ob_maxsize = 0;
      self->_ob_mask.ob_flags = 0;
      self->_ob_mask.ob_binary = 1;
      self->_ob = &self->_ob_mask;
      self->_maxsz = 0x10000;
    }

    else
    {
      p_ob_mask = self->_ob;
      if (!p_ob_mask)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

  if (*self->_fmt_cmd)
  {
    p_ob_mask = self->_ob_priv;
  }

  else
  {
    p_ob_mask = self->_ob_pub;
  }

  self->_ob = p_ob_mask;
  if (p_ob_mask)
  {
LABEL_11:
    self->_offset = p_ob_mask->ob_len;
  }

LABEL_12:
  self->_initialized = 1;
  v3 = *MEMORY[0x277D85DE8];
}

@end