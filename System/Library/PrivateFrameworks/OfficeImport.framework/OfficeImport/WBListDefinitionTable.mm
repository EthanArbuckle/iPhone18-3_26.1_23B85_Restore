@interface WBListDefinitionTable
+ (void)readFrom:(id)from listDefinitionTable:(id)table;
@end

@implementation WBListDefinitionTable

+ (void)readFrom:(id)from listDefinitionTable:(id)table
{
  fromCopy = from;
  tableCopy = table;
  v6 = [WBObjectFactory create:34];
  if (v6)
  {
  }

  else
  {
    v7 = 0;
  }

  wrdReader = [fromCopy wrdReader];
  (*(*wrdReader + 280))(wrdReader, v7);
  v9 = v7[2] - v7[1];
  if ((v9 >> 3) >= 1)
  {
    v10 = 0;
    v11 = (v9 >> 3) & 0x7FFFFFFF;
    do
    {
      v12 = v7[1];
      if (v10 >= ((v7[2] - v12) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      v13 = *(v12 + 8 * v10);
      v14 = *(v13 + 40);
      v15 = *(v13 + 48);
      if (v15 == 12)
      {
        v16 = 0;
      }

      else
      {
        v17 = [fromCopy styleAtIndex:v15 expectedType:4];
        v16 = [v17 id];
      }

      v18 = [tableCopy addDefinitionWithDefinitionId:v14 styleId:v16];
      targetDocument = [fromCopy targetDocument];
      [WBListDefinition readFrom:fromCopy listDefinition:v18 listFormat:v13 document:targetDocument];

      ++v10;
    }

    while (v11 != v10);
  }

  (*(*v7 + 8))(v7);
}

@end