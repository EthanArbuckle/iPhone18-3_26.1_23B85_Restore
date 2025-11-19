@interface EMSortableMessage
- (EMSortableMessage)initWithObjectID:(id)a3 date:(id)a4 displayDate:(id)a5 readLater:(id)a6 sendLaterDate:(id)a7;
@end

@implementation EMSortableMessage

- (EMSortableMessage)initWithObjectID:(id)a3 date:(id)a4 displayDate:(id)a5 readLater:(id)a6 sendLaterDate:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = EMSortableMessage;
  v17 = [(EMObject *)&v20 initWithObjectID:a3];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_date, a4);
    objc_storeStrong(&v18->_displayDate, a5);
    objc_storeStrong(&v18->_readLater, a6);
    objc_storeStrong(&v18->_sendLaterDate, a7);
  }

  return v18;
}

@end