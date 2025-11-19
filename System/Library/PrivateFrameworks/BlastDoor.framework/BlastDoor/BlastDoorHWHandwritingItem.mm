@interface BlastDoorHWHandwritingItem
+ (id)createHandwritingItem:(id)a3 uuid:(id)a4 date:(id)a5;
@end

@implementation BlastDoorHWHandwritingItem

+ (id)createHandwritingItem:(id)a3 uuid:(id)a4 date:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (getHWHandwritingItemClass())
  {
    v10 = [objc_alloc(getHWHandwritingItemClass()) initWithDrawing:v7];
    [v10 setUuid:v8];
    [v10 setCreationDate:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end