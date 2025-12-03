@interface TDPhotoshopLayer
- (id)hierarchicalLayerNames;
@end

@implementation TDPhotoshopLayer

- (id)hierarchicalLayerNames
{
  v3 = [-[TDPhotoshopLayer parentLayer](self "parentLayer")];
  if ([v3 count] && objc_msgSend(-[TDPhotoshopLayer name](self, "name"), "length"))
  {
    name = [(TDPhotoshopLayer *)self name];

    return [v3 arrayByAddingObject:name];
  }

  else
  {
    result = [-[TDPhotoshopLayer name](self "name")];
    if (result)
    {
      v6 = MEMORY[0x277CBEA60];
      name2 = [(TDPhotoshopLayer *)self name];

      return [v6 arrayWithObject:name2];
    }
  }

  return result;
}

@end