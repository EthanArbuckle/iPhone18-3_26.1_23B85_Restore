@interface FIDataSeparatedICloudDrive
+ (pair<FINode)findUnderlyingNodes;
@end

@implementation FIDataSeparatedICloudDrive

+ (pair<FINode)findUnderlyingNodes
{
  v3 = v2;
  v4 = +[FINode dataSeparatedICloudLibrariesContainer];
  v5 = +[FINode dataSeparatedICloudDefaultContainer];
  *v3 = v4;
  v3[1] = v5;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

@end