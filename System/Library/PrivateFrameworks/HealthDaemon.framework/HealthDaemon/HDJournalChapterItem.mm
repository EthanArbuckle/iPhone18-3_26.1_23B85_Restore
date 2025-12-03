@interface HDJournalChapterItem
- (HDJournalChapterItem)init;
- (HDJournalChapterItem)initWithEntryClassName:(id)name serializedEntryData:(id)data;
- (NSString)description;
- (id)deserializedEntryWithError:(id *)error;
@end

@implementation HDJournalChapterItem

- (HDJournalChapterItem)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDJournalChapterItem)initWithEntryClassName:(id)name serializedEntryData:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = HDJournalChapterItem;
  v8 = [(HDJournalChapterItem *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    entryClassName = v8->_entryClassName;
    v8->_entryClassName = v9;

    v11 = [dataCopy copy];
    serializedEntryData = v8->_serializedEntryData;
    v8->_serializedEntryData = v11;
  }

  return v8;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = HDJournalChapterItem;
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p %@ %ld>", -[HDJournalChapterItem class](&v4, sel_class), self, self->_entryClassName, -[NSData length](self->_serializedEntryData, "length")];

  return v2;
}

- (id)deserializedEntryWithError:(id *)error
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = objc_opt_class();
  serializedEntryData = self->_serializedEntryData;

  return [v5 unarchivedObjectOfClass:v6 fromData:serializedEntryData error:error];
}

@end