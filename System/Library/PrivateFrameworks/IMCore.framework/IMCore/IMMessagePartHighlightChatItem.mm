@interface IMMessagePartHighlightChatItem
- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor;
- (_NSRange)highlightedMessagePartRange;
- (id)_initWithItem:(id)item highlightedMessagePartGUID:(id)d highlightedMessagePartIndex:(int64_t)index highlightedMessagePartRange:(_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMMessagePartHighlightChatItem

- (id)_initWithItem:(id)item highlightedMessagePartGUID:(id)d highlightedMessagePartIndex:(int64_t)index highlightedMessagePartRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  itemCopy = item;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = IMMessagePartHighlightChatItem;
  v13 = [(IMChatItem *)&v25 _initWithItem:itemCopy];
  v14 = v13;
  if (v13)
  {
    *(v13 + 8) = index;
    *(v13 + 10) = location;
    *(v13 + 11) = length;
    objc_storeStrong(v13 + 9, d);
    v14[56] = objc_msgSend_isFromMe(itemCopy, v15, v16);
    v17 = MEMORY[0x1E69A8148];
    v20 = objc_msgSend_guid(itemCopy, v18, v19);
    v22 = objc_msgSend_encodeMessagePartGUID_prefix_partNumber_(v17, v21, v20, @"mh", index);
    objc_msgSend__setGUID_(v14, v23, v22);
  }

  return v14;
}

- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor
{
  *&retstr->scale = 0u;
  *&retstr->xScalar = 0u;
  *&retstr->associatedLayoutIntent = 0u;
  retstr->layoutIntent = 11;
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v10 = objc_msgSend_highlightedMessagePartGUID(self, v8, v9);
  v13 = objc_msgSend_highlightedMessagePartIndex(self, v11, v12);
  v16 = objc_msgSend_highlightedMessagePartRange(self, v14, v15);
  v18 = objc_msgSend__initWithItem_highlightedMessagePartGUID_highlightedMessagePartIndex_highlightedMessagePartRange_(v4, v17, v7, v10, v13, v16, v17);

  return v18;
}

- (_NSRange)highlightedMessagePartRange
{
  p_highlightedMessagePartRange = &self->_highlightedMessagePartRange;
  location = self->_highlightedMessagePartRange.location;
  length = p_highlightedMessagePartRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end