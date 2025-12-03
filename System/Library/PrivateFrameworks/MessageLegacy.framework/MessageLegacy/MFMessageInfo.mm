@interface MFMessageInfo
- (MFMessageInfo)init;
- (MFMessageInfo)initWithUid:(unsigned int)uid mailboxID:(unsigned int)d messageID:(int64_t)iD dateReceivedInterval:(unsigned int)interval dateSentInterval:(unsigned int)sentInterval conversationHash:(int64_t)hash read:(BOOL)read knownToHaveAttachments:(BOOL)self0 flagged:(BOOL)self1 isVIP:(BOOL)self2;
- (NSString)description;
- (id)_flagDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)generationCompare:(id)compare;
- (unint64_t)hash;
- (void)setDeleted:(BOOL)deleted;
- (void)setIsVIP:(BOOL)p;
- (void)setKnownToHaveAttachments:(BOOL)attachments;
- (void)setRead:(BOOL)read;
- (void)setUidIsLibraryID:(BOOL)d;
@end

@implementation MFMessageInfo

- (void)setRead:(BOOL)read
{
  if (read)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFD | v3;
}

- (void)setDeleted:(BOOL)deleted
{
  if (deleted)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFB | v3;
}

- (void)setUidIsLibraryID:(BOOL)d
{
  if (d)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xF7 | v3;
}

- (void)setKnownToHaveAttachments:(BOOL)attachments
{
  if (attachments)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xEF | v3;
}

- (void)setIsVIP:(BOOL)p
{
  if (p)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xDF | v3;
}

- (MFMessageInfo)init
{
  v3.receiver = self;
  v3.super_class = MFMessageInfo;
  result = [(MFMessageInfo *)&v3 init];
  if (result)
  {
    result->_generationNumber = atomic_fetch_add_explicit(&__globalGenerationNumber, 1uLL, memory_order_relaxed) + 1;
  }

  return result;
}

- (MFMessageInfo)initWithUid:(unsigned int)uid mailboxID:(unsigned int)d messageID:(int64_t)iD dateReceivedInterval:(unsigned int)interval dateSentInterval:(unsigned int)sentInterval conversationHash:(int64_t)hash read:(BOOL)read knownToHaveAttachments:(BOOL)self0 flagged:(BOOL)self1 isVIP:(BOOL)self2
{
  result = [(MFMessageInfo *)self init];
  if (result)
  {
    result->_uid = uid;
    result->_dateReceivedInterval = interval;
    result->_sortUid = uid;
    result->_sortDateReceivedInterval = interval;
    result->_dateSentInterval = sentInterval;
    result->_mailboxID = d;
    result->_conversationHash = hash;
    result->_messageIDHash = iD;
    if (read)
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    if (attachments)
    {
      v20 = 16;
    }

    else
    {
      v20 = 0;
    }

    if (p)
    {
      v21 = 32;
    }

    else
    {
      v21 = 0;
    }

    *(result + 8) = v20 | v19 | flagged | v21 | *(result + 8) & 0xCC;
  }

  return result;
}

- (int64_t)generationCompare:(id)compare
{
  v3 = *(compare + 6);
  generationNumber = self->_generationNumber;
  v5 = v3 <= generationNumber;
  v6 = v3 < generationNumber;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

- (unint64_t)hash
{
  result = self->_uid;
  if (!result)
  {
    [MFMessageInfo hash];
  }

  return result;
}

- (NSString)description
{
  sortUid = self->_sortUid;
  if (self->_uid == sortUid)
  {
    sortUid = &stru_2869ED3E0;
  }

  else
  {
    sortUid = [MEMORY[0x277CCACA8] stringWithFormat:@", sortUid=%u", sortUid];
  }

  if (self->_dateReceivedInterval == self->_sortDateReceivedInterval)
  {
    v5 = &stru_2869ED3E0;
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@", sortReceived=%u", self->_sortDateReceivedInterval];
  }

  v6 = [objc_alloc(MEMORY[0x277D071C0]) initWithHash:self->_conversationHash];
  v7 = [objc_alloc(MEMORY[0x277D071C0]) initWithHash:self->_messageIDHash];
  return [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p; uid=%u; mailboxID=%U; conversation=%@; messageID=%@; received=%u%@%@; %@;>", objc_opt_class(), self, self->_uid, self->_mailboxID, objc_msgSend(v6, "ef_publicDescription"), objc_msgSend(v7, "ef_publicDescription"), self->_dateReceivedInterval, sortUid, v5, -[MFMessageInfo _flagDescription](self, "_flagDescription")];
}

- (id)_flagDescription
{
  v3 = MEMORY[0x277CCACA8];
  [(MFMessageInfo *)self read];
  v4 = [v3 stringWithFormat:@"read=%@", NSStringFromBOOL()];
  if ([(MFMessageInfo *)self flagged])
  {
    v5 = @", flagged=YES";
  }

  else
  {
    v5 = &stru_2869ED3E0;
  }

  if ([(MFMessageInfo *)self isVIP])
  {
    v6 = @", isVIP=YES";
  }

  else
  {
    v6 = &stru_2869ED3E0;
  }

  isKnownToHaveAttachments = [(MFMessageInfo *)self isKnownToHaveAttachments];
  v8 = @", hasAttachments=YES";
  if (!isKnownToHaveAttachments)
  {
    v8 = &stru_2869ED3E0;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"flags={ %@%@%@%@ }", v4, v5, v6, v8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = *(self + 8);
  BYTE3(v8) = (v5 & 0x20) != 0;
  BYTE2(v8) = v5 & 1;
  BYTE1(v8) = (v5 & 0x10) != 0;
  LOBYTE(v8) = (v5 & 2) != 0;
  v6 = [v4 initWithUid:self->_uid mailboxID:self->_mailboxID messageID:self->_messageIDHash dateReceivedInterval:self->_dateReceivedInterval dateSentInterval:self->_dateSentInterval conversationHash:self->_conversationHash read:v8 knownToHaveAttachments:? flagged:? isVIP:?];
  [v6 setUidIsLibraryID:{-[MFMessageInfo uidIsLibraryID](self, "uidIsLibraryID")}];
  return v6;
}

@end