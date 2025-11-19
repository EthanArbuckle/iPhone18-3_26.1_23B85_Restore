@interface ICAttachmentTableModel(ItemProviderWriting)
- (id)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:;
- (id)writableTypeIdentifiersForItemProvider;
@end

@implementation ICAttachmentTableModel(ItemProviderWriting)

- (id)writableTypeIdentifiersForItemProvider
{
  v5.receiver = a1;
  v5.super_class = &off_28280AD60;
  v1 = objc_msgSendSuper2(&v5, sel_writableTypeIdentifiersForItemProvider);
  v2 = [*MEMORY[0x277CE1E50] identifier];
  v3 = [v1 arrayByAddingObject:v2];

  return v3;
}

- (id)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [*MEMORY[0x277CE1E50] identifier];
  v9 = [v6 isEqualToString:v8];

  if (v9)
  {
    v10 = [a1 table];
    if (v10)
    {
      v11 = [a1 attachment];
      v12 = [v11 managedObjectContext];
      v13 = [v10 attributedStringWithNSTextTablesForColumns:0 rows:0 context:v12];

      if (v13)
      {
        v14 = [v13 mutableCopy];
        [v14 fixAttributesInRange:{0, objc_msgSend(v13, "length")}];
        v15 = [v14 length];
        v23 = *MEMORY[0x277D74090];
        v24[0] = *MEMORY[0x277D74130];
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
        v22 = 0;
        v17 = [v14 dataFromRange:0 documentAttributes:v15 error:{v16, &v22}];
        v18 = v22;
      }

      else
      {
        v18 = 0;
        v17 = 0;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v7[2](v7, v17, v18);

    v19 = 0;
  }

  else
  {
    v21.receiver = a1;
    v21.super_class = &off_28280AD60;
    v19 = objc_msgSendSuper2(&v21, sel_loadDataWithTypeIdentifier_forItemProviderCompletionHandler_, v6, v7);
  }

  return v19;
}

@end