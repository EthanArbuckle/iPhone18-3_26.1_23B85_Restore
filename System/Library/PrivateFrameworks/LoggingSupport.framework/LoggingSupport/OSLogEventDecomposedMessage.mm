@interface OSLogEventDecomposedMessage
- (OSLogEventDecomposedMessage)initWithEventProxy:(id)proxy;
- (id)argumentAtIndex:(unint64_t)index;
- (id)literalPrefixAtIndex:(unint64_t)index;
- (id)placeholderAtIndex:(unint64_t)index;
- (unint64_t)placeholderCount;
- (void)_initializePlaceholders;
- (void)_populateFields;
- (void)dealloc;
@end

@implementation OSLogEventDecomposedMessage

- (void)_populateFields
{
  if (self->_hasPopulatedFields)
  {
    return;
  }

  self->_hasPopulatedFields = 1;
  proxy = self->_proxy;
  if ((proxy->_efv & 3) == 1)
  {
    _resolve_uuid_slow(self->_proxy);
    proxy = self->_proxy;
  }

  if (!proxy->_eint.var0.activity_create.creator_aid && !proxy->_eint.common.message)
  {
LABEL_35:
    v5 = 2;
    goto LABEL_9;
  }

  self->_messageState = 0;
  unique_pid = proxy->_eint.var0.activity_create.unique_pid;
  if (unique_pid >> 16 || proxy->_eint.var0.log_message.privdata_sz >= 0x10000)
  {
    goto LABEL_8;
  }

  if (proxy->_eint.type == 768)
  {
    if (unique_pid - 1733 >= 0xFFFFFFFFFFFFF93CLL)
    {
      buffer = proxy->_eint.var0.log_message.buffer;
      v7 = buffer[unique_pid - 1];
      if (unique_pid + 2 * v7 + 2 != v7 + 1)
      {
        hdr_buffer = self->_hdr_buffer;
        if (!hdr_buffer)
        {
          hdr_buffer = malloc_type_malloc(0x6C4uLL, 0xDC2BA6BAuLL);
          self->_hdr_buffer = hdr_buffer;
          buffer = proxy->_eint.var0.log_message.buffer;
          unique_pid = proxy->_eint.var0.activity_create.unique_pid;
          v7 = buffer[unique_pid - 1];
        }

        hdr_buffer->var0 = 0;
        hdr_buffer->var1 = v7;
        if (v7)
        {
          v9 = -v7;
          v10 = &buffer[unique_pid + ~v7];
          var2 = hdr_buffer->var2;
          v12 = &buffer[unique_pid - 1];
          while (1)
          {
            v13 = *(v12 + v9);
            v14 = v13 & 0x3F;
            v15 = &buffer[v14];
            if (&buffer[v14] > v10)
            {
              break;
            }

            *var2 = 0;
            var2[1] = v14;
            v16 = var2 + 2;
            memcpy(var2 + 2, buffer, v13 & 0x3F);
            var2 = &v16[v14];
            buffer = v15;
            if (__CFADD__(v9++, 1))
            {
              goto LABEL_21;
            }
          }

          self->_hdr = 0;
          goto LABEL_8;
        }

LABEL_21:
        self->_hdr = hdr_buffer;
        goto LABEL_25;
      }
    }

LABEL_8:
    v5 = 1;
LABEL_9:
    self->_messageState = v5;
    return;
  }

  hdr = proxy->_eint.var0.log_message.hdr;
  if (hdr)
  {
    self->_hdr = hdr;
    self->_pubdata = proxy->_eint.var0.log_message.pubdata;
    self->_pubsize = proxy->_eint.var0.log_message.pubdata_sz;
    goto LABEL_25;
  }

  pubdata = os_log_fmt_extract_pubdata(proxy->_eint.var0.log_message.buffer, proxy->_eint.var0.activity_create.unique_pid, &proxy->_eint.var0.timesync.continuous_time, &proxy->_eint.var0.log_message.pubdata_sz);
  proxy->_eint.var0.timesync.flags = pubdata;
  self->_hdr = pubdata;
  self->_pubdata = proxy->_eint.var0.log_message.pubdata;
  self->_pubsize = proxy->_eint.var0.log_message.pubdata_sz;
  if (!pubdata)
  {
    goto LABEL_8;
  }

LABEL_25:
  message = proxy->_eint.common.message;
  if (!message)
  {
    message = _os_log_resolve_format(proxy->_eint.common.image_uuid, proxy->_eint.common.trace_id, proxy->_eint.common.format_offset, 0);
    proxy->_eint.common.message = message;
  }

  self->_fmt = message;
  self->_privdata = proxy->_eint.var0.log_message.privdata;
  self->_privsize = proxy->_eint.var0.log_message.privdata_sz;
  v21 = 1;
  if (proxy->_eint.type != 768)
  {
    v21 = 2;
  }

  self->_variant = v21;
  self->_placeholderCount = 0;
  if (!message)
  {
    goto LABEL_35;
  }

  v22 = 4;
  if ((proxy->_eint.common.opaque_flags & 1) == 0)
  {
    v22 = 8;
  }

  self->_sizeof_long = v22;

  [(OSLogEventDecomposedMessage *)self _initializePlaceholders];
}

- (unint64_t)placeholderCount
{
  if (self->_messageState)
  {
    return 0;
  }

  else
  {
    return self->_placeholderCount;
  }
}

- (void)_initializePlaceholders
{
  if (!self->_messageState)
  {
    v21[11] = v2;
    v21[12] = v3;
    if (!self->_rawPlaceholders)
    {
      self->_rawPlaceholders = malloc_type_calloc(0x60uLL, 0x68uLL, 0x10D004083089DD7uLL);
    }

    fmt = self->_fmt;
    hdr = self->_hdr;
    v21[0] = hdr->var2;
    var1 = hdr->var1;
    v19 = (hdr->var0 >> 5) & 3;
    v7 = 0;
    if ([(OSLogEventProxy *)self->_proxy _shouldIncludeSensitive])
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    do
    {
      v9 = &fmt[strcspn(fmt, "%")];
      if (!*v9)
      {
        return;
      }

      if (v9[1] != 37)
      {
        v10 = self->_rawPlaceholders + 104 * v7;
        v11 = os_log_fmt_delimit(v9, self->_variant, (v10 + 8));
        if (v11)
        {
          if (*(v10 + 8))
          {
            self->_messageState = 3;
            return;
          }

          v12 = v11;
          ++self->_placeholderCount;
          os_log_fmt_read_aster_if_necessary((v10 + 8), &var1, v21);
          v14 = var1;
          if (var1)
          {
            v15 = v21[0];
            v14 = --var1;
            v21[0] += v21[0][1] + 2;
          }

          else
          {
            v15 = 0;
          }

          data = os_log_fmt_get_data((v10 + 8), v19, v8, v15, v14, self->_sizeof_long, self->_rawPlaceholders + 13 * v7, &self->_rawPlaceholders[1].var0 + 52 * v7 + 1, v13, &self->_rawPlaceholders[1].var1.var1 + 104 * v7, self->_pubdata, self->_pubsize, self->_privdata, self->_privsize);
          rawPlaceholders = self->_rawPlaceholders;
          *(&rawPlaceholders[1].var0 + 104 * v7) = data;
          if (v15)
          {
            *(&rawPlaceholders[1].var0 + 104 * v7 + 1) = *v15 >> 4;
            if (*v15)
            {
              v18 = 2;
LABEL_21:
              *(&rawPlaceholders[1].var1.var0 + 13 * v7) = v18;
            }

            else if ((*v15 & 2) != 0)
            {
              v18 = 1;
              goto LABEL_21;
            }
          }

          fmt = &v12[v9];
          ++v7;
          continue;
        }

        if (!v9[1])
        {
          return;
        }
      }

      fmt = v9 + 2;
    }

    while (v7 < 0x60);
  }
}

- (OSLogEventDecomposedMessage)initWithEventProxy:(id)proxy
{
  v7.receiver = self;
  v7.super_class = OSLogEventDecomposedMessage;
  v4 = [(OSLogEventDecomposedMessage *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_proxy = proxy;
    [(OSLogEventDecomposedMessage *)v4 _populateFields];
  }

  return v5;
}

- (void)dealloc
{
  hdr_buffer = self->_hdr_buffer;
  if (hdr_buffer)
  {
    free(hdr_buffer);
  }

  rawPlaceholders = self->_rawPlaceholders;
  if (rawPlaceholders)
  {
    free(rawPlaceholders);
  }

  v5.receiver = self;
  v5.super_class = OSLogEventDecomposedMessage;
  [(OSLogEventDecomposedMessage *)&v5 dealloc];
}

- (id)argumentAtIndex:(unint64_t)index
{
  if ([(OSLogEventDecomposedMessage *)self placeholderCount]<= index)
  {
    return 0;
  }

  v5 = [[OSLogEventMessageArgument alloc] initWithProxy:self index:index];

  return v5;
}

- (id)placeholderAtIndex:(unint64_t)index
{
  if ([(OSLogEventDecomposedMessage *)self placeholderCount]<= index || !self->_rawPlaceholders)
  {
    return 0;
  }

  index = [[OSLogMessagePlaceholder alloc] initWithPlaceholderStruct:&self->_rawPlaceholders->var1 + 104 * index];

  return index;
}

- (id)literalPrefixAtIndex:(unint64_t)index
{
  if (self->_messageState || !self->_fmt)
  {
    return 0;
  }

  if ([(OSLogEventDecomposedMessage *)self placeholderCount]| index)
  {
    if ([(OSLogEventDecomposedMessage *)self placeholderCount]>= index && self->_rawPlaceholders)
    {
      if ([(OSLogEventDecomposedMessage *)self placeholderCount]<= index)
      {
        v6 = 0;
      }

      else
      {
        v6 = &self->_rawPlaceholders->var1.var0 + 13 * index;
      }

      if (!index || (v9 = self->_rawPlaceholders + 104 * index, v9 == 96))
      {
        if (v6)
        {
          v13 = *v6 - self->_fmt;
        }

        else
        {
          v13 = strlen(self->_fmt);
        }

        if (v13 >= 1)
        {
          v14 = objc_alloc(MEMORY[0x277CCACA8]);
          fmt = self->_fmt;
LABEL_25:
          v16 = [v14 initWithBytes:fmt length:v13 encoding:4];

          return v16;
        }
      }

      else
      {
        v10 = *(v9 - 12);
        v11 = *(v9 - 42);
        v12 = (v10 + v11);
        if (v6)
        {
          v13 = *v6 - v12;
        }

        else
        {
          v13 = strlen((v10 + v11));
        }

        if (v13 >= 1)
        {
          v14 = objc_alloc(MEMORY[0x277CCACA8]);
          fmt = v12;
          goto LABEL_25;
        }
      }
    }

    return 0;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = self->_fmt;

  return [v7 stringWithCString:v8 encoding:4];
}

@end