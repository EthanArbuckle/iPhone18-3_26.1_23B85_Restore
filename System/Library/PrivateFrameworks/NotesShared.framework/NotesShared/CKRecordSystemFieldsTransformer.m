@interface CKRecordSystemFieldsTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation CKRecordSystemFieldsTransformer

- (id)transformedValue:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCAAB0];
    v4 = a3;
    v5 = [[v3 alloc] initRequiringSecureCoding:1];
    [v4 encodeSystemFieldsWithCoder:v5];

    v6 = [v5 encodedData];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)reverseTransformedValue:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = a3;
    v10 = 0;
    v5 = [[v3 alloc] initForReadingFromData:v4 error:&v10];

    v6 = v10;
    if (v6)
    {
      v7 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ICAttachment(ICAttachmentPersistenceAdditions) loadFromArchive:v6 dataPersister:v7 withIdentifierMap:?];
      }
    }

    v8 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end