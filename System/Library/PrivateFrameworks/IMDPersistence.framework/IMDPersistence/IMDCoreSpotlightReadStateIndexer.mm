@interface IMDCoreSpotlightReadStateIndexer
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightReadStateIndexer

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  itemCopy = item;
  updateCopy = update;
  v10 = objc_msgSend_objectForKeyedSubscript_(itemCopy, v9, @"type");
  v13 = objc_msgSend_unsignedLongLongValue(v10, v11, v12);

  if (!v13)
  {
    v15 = objc_msgSend_objectForKey_(itemCopy, v14, @"flags");
    v18 = objc_msgSend_unsignedLongLongValue(v15, v16, v17);

    v20 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v19, (v18 >> 13) & 1);
    objc_msgSend_setMessageRead_(updateCopy, v21, v20);
  }
}

@end