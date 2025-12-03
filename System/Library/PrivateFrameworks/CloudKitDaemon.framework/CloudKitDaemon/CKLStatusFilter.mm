@interface CKLStatusFilter
- (BOOL)matchesEvent:(id)event;
@end

@implementation CKLStatusFilter

- (BOOL)matchesEvent:(id)event
{
  eventCopy = event;
  if (objc_msgSend_type(eventCopy, v4, v5) == 2560)
  {
    v8 = objc_msgSend_processImagePath(eventCopy, v6, v7);
    hasSuffix = objc_msgSend_hasSuffix_(v8, v9, @"cloudd");
  }

  else
  {
    hasSuffix = 0;
  }

  return hasSuffix;
}

@end