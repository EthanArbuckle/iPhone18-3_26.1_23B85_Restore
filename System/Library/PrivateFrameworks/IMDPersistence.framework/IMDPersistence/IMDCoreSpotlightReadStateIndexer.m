@interface IMDCoreSpotlightReadStateIndexer
+ (void)indexItem:(id)a3 withChat:(id)a4 context:(id)a5 metadataToUpdate:(id)a6 timingProfiler:(id)a7;
@end

@implementation IMDCoreSpotlightReadStateIndexer

+ (void)indexItem:(id)a3 withChat:(id)a4 context:(id)a5 metadataToUpdate:(id)a6 timingProfiler:(id)a7
{
  v22 = a3;
  v8 = a6;
  v10 = objc_msgSend_objectForKeyedSubscript_(v22, v9, @"type");
  v13 = objc_msgSend_unsignedLongLongValue(v10, v11, v12);

  if (!v13)
  {
    v15 = objc_msgSend_objectForKey_(v22, v14, @"flags");
    v18 = objc_msgSend_unsignedLongLongValue(v15, v16, v17);

    v20 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v19, (v18 >> 13) & 1);
    objc_msgSend_setMessageRead_(v8, v21, v20);
  }
}

@end