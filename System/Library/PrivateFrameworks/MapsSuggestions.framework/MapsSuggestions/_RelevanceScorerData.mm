@interface _RelevanceScorerData
- (_RelevanceScorerData)initWithNames:(id)a3 addresses:(id)a4 mapItems:(id)a5;
@end

@implementation _RelevanceScorerData

- (_RelevanceScorerData)initWithNames:(id)a3 addresses:(id)a4 mapItems:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _RelevanceScorerData;
  v11 = [(_RelevanceScorerData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(_RelevanceScorerData *)v11 setNames:v8];
    [(_RelevanceScorerData *)v12 setAddresses:v9];
    [(_RelevanceScorerData *)v12 setMapItems:v10];
  }

  return v12;
}

@end