@interface TDPhotoshopLayer
- (id)hierarchicalLayerNames;
@end

@implementation TDPhotoshopLayer

- (id)hierarchicalLayerNames
{
  v3 = [-[TDPhotoshopLayer parentLayer](self "parentLayer")];
  if ([v3 count] && objc_msgSend(-[TDPhotoshopLayer name](self, "name"), "length"))
  {
    v4 = [(TDPhotoshopLayer *)self name];

    return [v3 arrayByAddingObject:v4];
  }

  else
  {
    result = [-[TDPhotoshopLayer name](self "name")];
    if (result)
    {
      v6 = MEMORY[0x277CBEA60];
      v7 = [(TDPhotoshopLayer *)self name];

      return [v6 arrayWithObject:v7];
    }
  }

  return result;
}

@end