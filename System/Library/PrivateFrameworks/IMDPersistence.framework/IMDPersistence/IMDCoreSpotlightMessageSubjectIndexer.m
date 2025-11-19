@interface IMDCoreSpotlightMessageSubjectIndexer
+ (void)indexItem:(id)a3 withChat:(id)a4 context:(id)a5 metadataToUpdate:(id)a6 timingProfiler:(id)a7;
@end

@implementation IMDCoreSpotlightMessageSubjectIndexer

+ (void)indexItem:(id)a3 withChat:(id)a4 context:(id)a5 metadataToUpdate:(id)a6 timingProfiler:(id)a7
{
  v13 = a6;
  v9 = objc_msgSend_objectForKey_(a3, v8, @"subject");
  if (objc_msgSend_length(v9, v10, v11))
  {
    objc_msgSend_setTitle_(v13, v12, v9);
  }
}

@end