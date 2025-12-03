@interface CRKFTSEntry
- (CRKFTSEntry)initWithFTSEntry:(_ftsent *)entry error:(id *)error;
- (id)errorForFTSEntry:(_ftsent *)entry;
- (stat)stat;
@end

@implementation CRKFTSEntry

- (CRKFTSEntry)initWithFTSEntry:(_ftsent *)entry error:(id *)error
{
  selfCopy = self;
  if (!entry)
  {
    [CRKFTSEntry initWithFTSEntry:a2 error:self];
  }

  v7 = [(CRKFTSEntry *)selfCopy errorForFTSEntry:entry];
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v22.receiver = selfCopy;
    v22.super_class = CRKFTSEntry;
    v11 = [(CRKFTSEntry *)&v22 init];
    if (v11)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:entry->fts_accpath];
      path = v11->_path;
      v11->_path = v12;

      fts_statp = entry->fts_statp;
      *&v11->_stat.st_dev = *&fts_statp->st_dev;
      v15 = *&fts_statp->st_uid;
      st_atimespec = fts_statp->st_atimespec;
      st_ctimespec = fts_statp->st_ctimespec;
      v11->_stat.st_mtimespec = fts_statp->st_mtimespec;
      v11->_stat.st_ctimespec = st_ctimespec;
      *&v11->_stat.st_uid = v15;
      v11->_stat.st_atimespec = st_atimespec;
      st_birthtimespec = fts_statp->st_birthtimespec;
      v19 = *&fts_statp->st_size;
      v20 = *fts_statp->st_qspare;
      *&v11->_stat.st_blksize = *&fts_statp->st_blksize;
      *v11->_stat.st_qspare = v20;
      v11->_stat.st_birthtimespec = st_birthtimespec;
      *&v11->_stat.st_size = v19;
    }

    selfCopy = v11;
    v10 = selfCopy;
  }

  return v10;
}

- (id)errorForFTSEntry:(_ftsent *)entry
{
  v11[1] = *MEMORY[0x277D85DE8];
  fts_info = entry->fts_info;
  v4 = fts_info > 0xA;
  v5 = (1 << fts_info) & 0x490;
  if (v4 || v5 == 0)
  {
    if (entry->fts_accpath)
    {
      v7 = 0;
    }

    else
    {
      v10 = @"kCRKFilePathErrorKey";
      v11[0] = @"<nil>";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v7 = CRKErrorWithCodeAndUserInfo(19, v9);
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:entry->fts_errno userInfo:0];
  }

  return v7;
}

- (stat)stat
{
  v3 = *self->st_qspare;
  *&retstr->st_size = *&self->st_blksize;
  *&retstr->st_blksize = v3;
  *retstr->st_qspare = *&self[1].st_dev;
  st_ctimespec = self->st_ctimespec;
  retstr->st_atimespec = self->st_mtimespec;
  retstr->st_mtimespec = st_ctimespec;
  v5 = *&self->st_size;
  retstr->st_ctimespec = self->st_birthtimespec;
  retstr->st_birthtimespec = v5;
  st_atimespec = self->st_atimespec;
  *&retstr->st_dev = *&self->st_uid;
  *&retstr->st_uid = st_atimespec;
  return self;
}

- (void)initWithFTSEntry:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKFTSEntry.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"FTSEntry"}];
}

@end