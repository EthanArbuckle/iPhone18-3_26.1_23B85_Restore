@interface NSOperationQueue
+ (id)vcp_sharedAnalysisQueue;
@end

@implementation NSOperationQueue

+ (id)vcp_sharedAnalysisQueue
{
  if (qword_1002B80B0 != -1)
  {
    sub_100010694();
  }

  v3 = qword_1002B80B8;

  return v3;
}

@end