@interface FSItemAttributes
+ (id)requestWithData:(id)a3;
+ (id)requestWithLIAttributes:(const _LIFileAttributes *)a3;
- (BOOL)hasMinimalRequiredAttributes;
- (BOOL)isValid:(int64_t)a3;
- (FSItemAttributes)init;
- (FSItemAttributes)initWithCoder:(id)a3;
- (FSItemAttributes)initWithLIAttributes:(const _LIFileAttributes *)a3;
- (int64_t)type;
- (timespec)accessTime;
- (timespec)addedTime;
- (timespec)backupTime;
- (timespec)birthTime;
- (timespec)changeTime;
- (timespec)modifyTime;
- (unint64_t)allocSize;
- (unint64_t)fileID;
- (unint64_t)parentID;
- (unint64_t)size;
- (unsigned)flags;
- (unsigned)gid;
- (unsigned)internalFlags;
- (unsigned)linkCount;
- (unsigned)mode;
- (unsigned)uid;
- (void)encodeWithCoder:(id)a3;
- (void)getLIAttributes:(_LIFileAttributes *)a3;
- (void)hasMinimalRequiredAttributes;
- (void)setSupportsLimitedXAttrs:(BOOL)a3;
- (void)setType:(int64_t)a3;
@end

@implementation FSItemAttributes

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v4);
  }

  [v5 encodeBytes:&self->attrs length:184 forKey:@"FSItemAttr"];
}

- (FSItemAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = FSItemAttributes;
  v19 = 0;
  v5 = [(FSItemAttributes *)&v18 init];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
      objc_exception_throw(v17);
    }

    v6 = [v4 decodeBytesForKey:@"FSItemAttr" returnedLength:&v19];
    if (v6 && v19 == 184)
    {
      v7 = *v6;
      v8 = *(v6 + 16);
      v9 = *(v6 + 32);
      *(v5 + 56) = *(v6 + 48);
      *(v5 + 40) = v9;
      *(v5 + 24) = v8;
      *(v5 + 8) = v7;
      v10 = *(v6 + 64);
      v11 = *(v6 + 80);
      v12 = *(v6 + 96);
      *(v5 + 120) = *(v6 + 112);
      *(v5 + 104) = v12;
      *(v5 + 88) = v11;
      *(v5 + 72) = v10;
      v13 = *(v6 + 128);
      v14 = *(v6 + 144);
      v15 = *(v6 + 160);
      *(v5 + 23) = *(v6 + 176);
      *(v5 + 168) = v15;
      *(v5 + 152) = v14;
      *(v5 + 136) = v13;
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (FSItemAttributes)init
{
  v5.receiver = self;
  v5.super_class = FSItemAttributes;
  v2 = [(FSItemAttributes *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 23) = 0;
    *(v2 + 168) = 0u;
    *(v2 + 152) = 0u;
    *(v2 + 136) = 0u;
    *(v2 + 120) = 0u;
    *(v2 + 104) = 0u;
    *(v2 + 88) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 56) = 0u;
    *(v2 + 40) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 8) = 0u;
  }

  [v2 setInhibitKernelOffloadedIO:0];
  return v3;
}

- (FSItemAttributes)initWithLIAttributes:(const _LIFileAttributes *)a3
{
  v6.receiver = self;
  v6.super_class = FSItemAttributes;
  result = [(FSItemAttributes *)&v6 init];
  if (result)
  {
    fa_validmask = a3->fa_validmask;
    result->attrs.fa_validmask = fa_validmask;
    if (fa_validmask)
    {
      result->attrs.fa_type = a3->fa_type;
      if ((fa_validmask & 2) == 0)
      {
LABEL_4:
        if ((fa_validmask & 8) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_24;
      }
    }

    else if ((fa_validmask & 2) == 0)
    {
      goto LABEL_4;
    }

    result->attrs.fa_mode = a3->fa_mode;
    if ((fa_validmask & 8) == 0)
    {
LABEL_5:
      if ((fa_validmask & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_24:
    result->attrs.fa_uid = a3->fa_uid;
    if ((fa_validmask & 4) == 0)
    {
LABEL_6:
      if ((fa_validmask & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }

LABEL_25:
    result->attrs.fa_nlink = a3->fa_nlink;
    if ((fa_validmask & 0x10) == 0)
    {
LABEL_7:
      if ((fa_validmask & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    result->attrs.fa_gid = a3->fa_gid;
    if ((fa_validmask & 0x20) == 0)
    {
LABEL_8:
      if ((fa_validmask & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    result->attrs.fa_bsd_flags = a3->fa_bsd_flags;
    if ((fa_validmask & 0x40) == 0)
    {
LABEL_9:
      if ((fa_validmask & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_28:
    result->attrs.fa_size = a3->fa_size;
    if ((fa_validmask & 0x80) == 0)
    {
LABEL_10:
      if ((fa_validmask & 0x100) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_29:
    result->attrs.fa_allocsize = a3->fa_allocsize;
    if ((fa_validmask & 0x100) == 0)
    {
LABEL_11:
      if ((fa_validmask & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }

LABEL_30:
    result->attrs.fa_fileid = a3->fa_fileid;
    if ((fa_validmask & 0x200) == 0)
    {
LABEL_12:
      if ((fa_validmask & 0x400) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

LABEL_31:
    result->attrs.fa_parentid = a3->fa_parentid;
    if ((fa_validmask & 0x400) == 0)
    {
LABEL_13:
      if ((fa_validmask & 0x800) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }

LABEL_32:
    result->attrs.fa_atime = a3->fa_atime;
    if ((fa_validmask & 0x800) == 0)
    {
LABEL_14:
      if ((fa_validmask & 0x1000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }

LABEL_33:
    result->attrs.fa_mtime = a3->fa_mtime;
    if ((fa_validmask & 0x1000) == 0)
    {
LABEL_15:
      if ((fa_validmask & 0x2000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }

LABEL_34:
    result->attrs.fa_ctime = a3->fa_ctime;
    if ((fa_validmask & 0x2000) == 0)
    {
LABEL_16:
      if ((fa_validmask & 0x4000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }

LABEL_35:
    result->attrs.fa_birthtime = a3->fa_birthtime;
    if ((fa_validmask & 0x4000) == 0)
    {
LABEL_17:
      if ((fa_validmask & 0x8000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_37;
    }

LABEL_36:
    result->attrs.fa_backuptime = a3->fa_backuptime;
    if ((fa_validmask & 0x8000) == 0)
    {
LABEL_18:
      if ((fa_validmask & 0x4000000000000000) == 0)
      {
LABEL_20:
        result->attrs.fa_validmask = fa_validmask;
        return result;
      }

LABEL_19:
      result->attrs.fa_int_flags = a3->fa_int_flags;
      goto LABEL_20;
    }

LABEL_37:
    result->attrs.fa_addedtime = a3->fa_addedtime;
    if ((fa_validmask & 0x4000000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  return result;
}

+ (id)requestWithLIAttributes:(const _LIFileAttributes *)a3
{
  v3 = [[a1 alloc] initWithLIAttributes:a3];

  return v3;
}

+ (id)requestWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 bytes];
  if ([v4 length] > 0xB7)
  {
    v7 = [a1 requestWithLIAttributes:v5];
  }

  else
  {
    v6 = fskit_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(FSItemAttributes *)v4 requestWithData:v6];
    }

    v7 = 0;
  }

  return v7;
}

- (void)getLIAttributes:(_LIFileAttributes *)a3
{
  v3 = *&self->attrs.__fa_rsvd0;
  v4 = *&self->attrs.fa_seqno;
  v5 = *&self->attrs.fa_size;
  *&a3->fa_nlink = *&self->attrs.fa_nlink;
  *&a3->fa_size = v5;
  *&a3->__fa_rsvd0 = v3;
  *&a3->fa_seqno = v4;
  v6 = *&self->attrs.fa_fileid;
  fa_atime = self->attrs.fa_atime;
  fa_ctime = self->attrs.fa_ctime;
  a3->fa_mtime = self->attrs.fa_mtime;
  a3->fa_ctime = fa_ctime;
  *&a3->fa_fileid = v6;
  a3->fa_atime = fa_atime;
  fa_birthtime = self->attrs.fa_birthtime;
  fa_backuptime = self->attrs.fa_backuptime;
  fa_addedtime = self->attrs.fa_addedtime;
  *&a3->fa_int_flags = *&self->attrs.fa_int_flags;
  a3->fa_backuptime = fa_backuptime;
  a3->fa_addedtime = fa_addedtime;
  a3->fa_birthtime = fa_birthtime;
}

- (BOOL)isValid:(int64_t)a3
{
  result = 0;
  if (a3 <= 255)
  {
    if ((a3 - 1) <= 0x3F && ((1 << (a3 - 1)) & 0x800000008000808BLL) != 0 || a3 == 128)
    {
      return (self->attrs.fa_validmask & a3) != 0;
    }
  }

  else if (a3 <= 4095)
  {
    if (a3 > 1023)
    {
      if (a3 == 1024 || a3 == 2048)
      {
        return (self->attrs.fa_validmask & a3) != 0;
      }
    }

    else if (a3 == 256 || a3 == 512)
    {
      return (self->attrs.fa_validmask & a3) != 0;
    }
  }

  else
  {
    if (a3 >= 0x4000)
    {
      if (a3 != 0x4000 && a3 != 0x4000000000000000 && a3 != 0x8000)
      {
        return result;
      }

      return (self->attrs.fa_validmask & a3) != 0;
    }

    if (a3 == 4096 || a3 == 0x2000)
    {
      return (self->attrs.fa_validmask & a3) != 0;
    }
  }

  return result;
}

- (unsigned)internalFlags
{
  if ((self->attrs.fa_validmask & 0x4000000000000000) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes internalFlags];
    }
  }

  return self->attrs.fa_int_flags;
}

- (unsigned)uid
{
  if ((self->attrs.fa_validmask & 8) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes uid];
    }
  }

  return self->attrs.fa_uid;
}

- (unsigned)gid
{
  if ((self->attrs.fa_validmask & 0x10) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes gid];
    }
  }

  return self->attrs.fa_gid;
}

- (unsigned)mode
{
  if ((self->attrs.fa_validmask & 2) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes mode];
    }
  }

  return self->attrs.fa_mode;
}

- (unsigned)linkCount
{
  if ((self->attrs.fa_validmask & 4) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes linkCount];
    }
  }

  return self->attrs.fa_nlink;
}

- (unsigned)flags
{
  if ((self->attrs.fa_validmask & 0x20) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes flags];
    }
  }

  return self->attrs.fa_bsd_flags;
}

- (void)setSupportsLimitedXAttrs:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  [(FSItemAttributes *)self setInternalFlags:self->attrs.fa_int_flags & 0xFFFFFFFB | v3];
}

- (unint64_t)size
{
  if ((self->attrs.fa_validmask & 0x40) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes size];
    }
  }

  return self->attrs.fa_size;
}

- (unint64_t)allocSize
{
  if ((self->attrs.fa_validmask & 0x80) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes allocSize];
    }
  }

  return self->attrs.fa_allocsize;
}

- (unint64_t)fileID
{
  if ((self->attrs.fa_validmask & 0x100) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes fileID];
    }
  }

  return self->attrs.fa_fileid;
}

- (unint64_t)parentID
{
  if ((self->attrs.fa_validmask & 0x200) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes parentID];
    }
  }

  return self->attrs.fa_parentid;
}

- (int64_t)type
{
  if ((self->attrs.fa_validmask & 1) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes type];
    }
  }

  v4 = self->attrs.fa_type - 1;
  if (v4 < 7)
  {
    return v4 + 1;
  }

  else
  {
    return 0;
  }
}

- (void)setType:(int64_t)a3
{
  if ((a3 - 1) < 7)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->attrs.fa_type = v3;
  self->attrs.fa_validmask |= 1uLL;
}

- (timespec)modifyTime
{
  if ((self->attrs.fa_validmask & 0x800) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes modifyTime];
    }
  }

  tv_sec = self->attrs.fa_mtime.tv_sec;
  tv_nsec = self->attrs.fa_mtime.tv_nsec;
  result.tv_nsec = tv_nsec;
  result.tv_sec = tv_sec;
  return result;
}

- (timespec)accessTime
{
  if ((self->attrs.fa_validmask & 0x400) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes accessTime];
    }
  }

  tv_sec = self->attrs.fa_atime.tv_sec;
  tv_nsec = self->attrs.fa_atime.tv_nsec;
  result.tv_nsec = tv_nsec;
  result.tv_sec = tv_sec;
  return result;
}

- (timespec)changeTime
{
  if ((self->attrs.fa_validmask & 0x1000) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes changeTime];
    }
  }

  tv_sec = self->attrs.fa_ctime.tv_sec;
  tv_nsec = self->attrs.fa_ctime.tv_nsec;
  result.tv_nsec = tv_nsec;
  result.tv_sec = tv_sec;
  return result;
}

- (timespec)addedTime
{
  if ((self->attrs.fa_validmask & 0x8000) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes addedTime];
    }
  }

  tv_sec = self->attrs.fa_addedtime.tv_sec;
  tv_nsec = self->attrs.fa_addedtime.tv_nsec;
  result.tv_nsec = tv_nsec;
  result.tv_sec = tv_sec;
  return result;
}

- (timespec)backupTime
{
  if ((self->attrs.fa_validmask & 0x4000) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes backupTime];
    }
  }

  tv_sec = self->attrs.fa_backuptime.tv_sec;
  tv_nsec = self->attrs.fa_backuptime.tv_nsec;
  result.tv_nsec = tv_nsec;
  result.tv_sec = tv_sec;
  return result;
}

- (timespec)birthTime
{
  if ((self->attrs.fa_validmask & 0x2000) == 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [FSItemAttributes birthTime];
    }
  }

  tv_sec = self->attrs.fa_birthtime.tv_sec;
  tv_nsec = self->attrs.fa_birthtime.tv_nsec;
  result.tv_nsec = tv_nsec;
  result.tv_sec = tv_sec;
  return result;
}

- (BOOL)hasMinimalRequiredAttributes
{
  p_fa_validmask = &self->attrs.fa_validmask;
  v3 = self->attrs.fa_validmask & 0x4000000000003FE7;
  if (v3 != 0x4000000000003FE7)
  {
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(FSItemAttributes *)p_fa_validmask hasMinimalRequiredAttributes];
    }
  }

  return v3 == 0x4000000000003FE7;
}

+ (void)requestWithData:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 length];
  _os_log_error_impl(&dword_24A929000, a2, OS_LOG_TYPE_ERROR, "requestWithData: passed NSData with only %lu bytes", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)hasMinimalRequiredAttributes
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134218240;
  v5 = v2;
  v6 = 2048;
  v7 = 0x4000000000003FE7;
  _os_log_error_impl(&dword_24A929000, a2, OS_LOG_TYPE_ERROR, "attributes mask is 0x%llx, expected 0x%llx", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end