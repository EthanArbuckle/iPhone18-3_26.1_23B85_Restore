@interface _RelevanceScorerData
- (_RelevanceScorerData)initWithNames:(id)names addresses:(id)addresses mapItems:(id)items;
@end

@implementation _RelevanceScorerData

- (_RelevanceScorerData)initWithNames:(id)names addresses:(id)addresses mapItems:(id)items
{
  namesCopy = names;
  addressesCopy = addresses;
  itemsCopy = items;
  v14.receiver = self;
  v14.super_class = _RelevanceScorerData;
  v11 = [(_RelevanceScorerData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(_RelevanceScorerData *)v11 setNames:namesCopy];
    [(_RelevanceScorerData *)v12 setAddresses:addressesCopy];
    [(_RelevanceScorerData *)v12 setMapItems:itemsCopy];
  }

  return v12;
}

@end