@interface EMSortableMessage
- (EMSortableMessage)initWithObjectID:(id)d date:(id)date displayDate:(id)displayDate readLater:(id)later sendLaterDate:(id)laterDate;
@end

@implementation EMSortableMessage

- (EMSortableMessage)initWithObjectID:(id)d date:(id)date displayDate:(id)displayDate readLater:(id)later sendLaterDate:(id)laterDate
{
  dateCopy = date;
  displayDateCopy = displayDate;
  laterCopy = later;
  laterDateCopy = laterDate;
  v20.receiver = self;
  v20.super_class = EMSortableMessage;
  v17 = [(EMObject *)&v20 initWithObjectID:d];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_date, date);
    objc_storeStrong(&v18->_displayDate, displayDate);
    objc_storeStrong(&v18->_readLater, later);
    objc_storeStrong(&v18->_sendLaterDate, laterDate);
  }

  return v18;
}

@end