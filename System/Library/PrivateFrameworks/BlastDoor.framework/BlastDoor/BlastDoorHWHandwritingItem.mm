@interface BlastDoorHWHandwritingItem
+ (id)createHandwritingItem:(id)item uuid:(id)uuid date:(id)date;
@end

@implementation BlastDoorHWHandwritingItem

+ (id)createHandwritingItem:(id)item uuid:(id)uuid date:(id)date
{
  itemCopy = item;
  uuidCopy = uuid;
  dateCopy = date;
  if (getHWHandwritingItemClass())
  {
    v10 = [objc_alloc(getHWHandwritingItemClass()) initWithDrawing:itemCopy];
    [v10 setUuid:uuidCopy];
    [v10 setCreationDate:dateCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end