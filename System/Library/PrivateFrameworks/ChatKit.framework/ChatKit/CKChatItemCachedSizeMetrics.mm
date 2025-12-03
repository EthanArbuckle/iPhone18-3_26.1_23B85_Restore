@interface CKChatItemCachedSizeMetrics
- (CGSize)size;
- (CGSize)translationSecondaryTextSize;
- (CKChatItemCachedSizeMetrics)initWithCoder:(id)coder;
- (UIEdgeInsets)textAlignmentInsets;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKChatItemCachedSizeMetrics

- (CKChatItemCachedSizeMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(CKChatItemCachedSizeMetrics);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CGUID"];
  [(CKChatItemCachedSizeMetrics *)v5 setChatItemGUID:v6];

  [coderCopy decodeCGSizeForKey:@"CAS"];
  [(CKChatItemCachedSizeMetrics *)v5 setSize:?];
  [coderCopy decodeCGSizeForKey:@"ACAS"];
  [(CKChatItemCachedSizeMetrics *)v5 setTranslationSecondaryTextSize:?];
  [coderCopy decodeUIEdgeInsetsForKey:@"CITAI"];
  [(CKChatItemCachedSizeMetrics *)v5 setTextAlignmentInsets:?];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CILA"];

  [(CKChatItemCachedSizeMetrics *)v5 setLastAccess:v7];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  chatItemGUID = [(CKChatItemCachedSizeMetrics *)self chatItemGUID];
  [coderCopy encodeObject:chatItemGUID forKey:@"CGUID"];

  [(CKChatItemCachedSizeMetrics *)self size];
  [coderCopy encodeCGSize:@"CAS" forKey:?];
  [(CKChatItemCachedSizeMetrics *)self translationSecondaryTextSize];
  [coderCopy encodeCGSize:@"ACAS" forKey:?];
  [(CKChatItemCachedSizeMetrics *)self textAlignmentInsets];
  [coderCopy encodeUIEdgeInsets:@"CITAI" forKey:?];
  lastAccess = [(CKChatItemCachedSizeMetrics *)self lastAccess];
  [coderCopy encodeObject:lastAccess forKey:@"CILA"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(CKChatItemCachedSizeMetrics *)self size];
  v5 = NSStringFromCGSize(v10);
  [(CKChatItemCachedSizeMetrics *)self textAlignmentInsets];
  v6 = NSStringFromUIEdgeInsets(v11);
  v7 = [v3 stringWithFormat:@"<%@ - size %@ insets %@>", v4, v5, v6];

  return v7;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)translationSecondaryTextSize
{
  width = self->_translationSecondaryTextSize.width;
  height = self->_translationSecondaryTextSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)textAlignmentInsets
{
  top = self->_textAlignmentInsets.top;
  left = self->_textAlignmentInsets.left;
  bottom = self->_textAlignmentInsets.bottom;
  right = self->_textAlignmentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end