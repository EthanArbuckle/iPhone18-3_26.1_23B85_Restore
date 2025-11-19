@interface CKChatItemCachedSizeMetrics
- (CGSize)size;
- (CGSize)translationSecondaryTextSize;
- (CKChatItemCachedSizeMetrics)initWithCoder:(id)a3;
- (UIEdgeInsets)textAlignmentInsets;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKChatItemCachedSizeMetrics

- (CKChatItemCachedSizeMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CKChatItemCachedSizeMetrics);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CGUID"];
  [(CKChatItemCachedSizeMetrics *)v5 setChatItemGUID:v6];

  [v4 decodeCGSizeForKey:@"CAS"];
  [(CKChatItemCachedSizeMetrics *)v5 setSize:?];
  [v4 decodeCGSizeForKey:@"ACAS"];
  [(CKChatItemCachedSizeMetrics *)v5 setTranslationSecondaryTextSize:?];
  [v4 decodeUIEdgeInsetsForKey:@"CITAI"];
  [(CKChatItemCachedSizeMetrics *)v5 setTextAlignmentInsets:?];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CILA"];

  [(CKChatItemCachedSizeMetrics *)v5 setLastAccess:v7];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CKChatItemCachedSizeMetrics *)self chatItemGUID];
  [v4 encodeObject:v5 forKey:@"CGUID"];

  [(CKChatItemCachedSizeMetrics *)self size];
  [v4 encodeCGSize:@"CAS" forKey:?];
  [(CKChatItemCachedSizeMetrics *)self translationSecondaryTextSize];
  [v4 encodeCGSize:@"ACAS" forKey:?];
  [(CKChatItemCachedSizeMetrics *)self textAlignmentInsets];
  [v4 encodeUIEdgeInsets:@"CITAI" forKey:?];
  v6 = [(CKChatItemCachedSizeMetrics *)self lastAccess];
  [v4 encodeObject:v6 forKey:@"CILA"];
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