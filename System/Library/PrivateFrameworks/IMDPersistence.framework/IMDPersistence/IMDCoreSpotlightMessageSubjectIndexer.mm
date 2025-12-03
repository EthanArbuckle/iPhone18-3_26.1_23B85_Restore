@interface IMDCoreSpotlightMessageSubjectIndexer
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightMessageSubjectIndexer

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  updateCopy = update;
  v9 = objc_msgSend_objectForKey_(item, v8, @"subject");
  if (objc_msgSend_length(v9, v10, v11))
  {
    objc_msgSend_setTitle_(updateCopy, v12, v9);
  }
}

@end