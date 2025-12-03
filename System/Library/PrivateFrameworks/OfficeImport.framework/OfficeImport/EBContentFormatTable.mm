@interface EBContentFormatTable
+ (void)readWithState:(id)state;
@end

@implementation EBContentFormatTable

+ (void)readWithState:(id)state
{
  stateCopy = state;
  resources = [stateCopy resources];
  contentFormats = [resources contentFormats];

  XlContentFormatTable::XlContentFormatTable(&v12);
  xlReader = [stateCopy xlReader];
  (*(*xlReader + 176))(xlReader, &v12);
  if (((v14 - v13) & 0x7FFFFFFF8) != 0)
  {
    v7 = 0;
    v8 = ((v14 - v13) >> 3);
    do
    {
      if (v7 >= ((v14 - v13) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      v9 = *(v13 + 8 * v7);
      resources2 = [stateCopy resources];
      v11 = [EBContentFormat edContentFormatFromXlFormat:v9 edResources:resources2];

      [contentFormats addOrEquivalentObject:v11];
      ++v7;
    }

    while (v8 != v7);
  }

  XlContentFormatTable::~XlContentFormatTable(&v12);
}

@end