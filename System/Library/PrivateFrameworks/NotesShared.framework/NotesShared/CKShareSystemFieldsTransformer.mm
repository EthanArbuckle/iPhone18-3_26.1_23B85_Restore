@interface CKShareSystemFieldsTransformer
- (id)reverseTransformedValue:(id)value;
@end

@implementation CKShareSystemFieldsTransformer

- (id)reverseTransformedValue:(id)value
{
  if (value)
  {
    v3 = MEMORY[0x277CCAAC8];
    valueCopy = value;
    v10 = 0;
    v5 = [[v3 alloc] initForReadingFromData:valueCopy error:&v10];

    v6 = v10;
    if (v6)
    {
      v7 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ICAttachment(ICAttachmentPersistenceAdditions) loadFromArchive:v6 dataPersister:v7 withIdentifierMap:?];
      }
    }

    v8 = [objc_alloc(MEMORY[0x277CBC680]) initWithCoder:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end