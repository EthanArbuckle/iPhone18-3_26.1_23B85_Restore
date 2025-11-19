@interface HDJournalChapterItem
- (HDJournalChapterItem)init;
- (HDJournalChapterItem)initWithEntryClassName:(id)a3 serializedEntryData:(id)a4;
- (NSString)description;
- (id)deserializedEntryWithError:(id *)a3;
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

- (HDJournalChapterItem)initWithEntryClassName:(id)a3 serializedEntryData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDJournalChapterItem;
  v8 = [(HDJournalChapterItem *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    entryClassName = v8->_entryClassName;
    v8->_entryClassName = v9;

    v11 = [v7 copy];
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

- (id)deserializedEntryWithError:(id *)a3
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = objc_opt_class();
  serializedEntryData = self->_serializedEntryData;

  return [v5 unarchivedObjectOfClass:v6 fromData:serializedEntryData error:a3];
}

@end