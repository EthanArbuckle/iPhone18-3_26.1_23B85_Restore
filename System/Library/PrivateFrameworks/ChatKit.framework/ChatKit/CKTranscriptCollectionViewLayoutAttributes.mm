@interface CKTranscriptCollectionViewLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (CATransform3D)contentTransform3D;
- (CGSize)parentChatItemSize;
- (CKTranscriptCollectionViewLayoutAttributes)init;
- (CKTranscriptCollectionViewLayoutAttributes)initWithLayoutAttributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CKTranscriptCollectionViewLayoutAttributes

- (CKTranscriptCollectionViewLayoutAttributes)init
{
  v8.receiver = self;
  v8.super_class = CKTranscriptCollectionViewLayoutAttributes;
  result = [(UICollectionViewLayoutAttributes *)&v8 init];
  if (result)
  {
    v3 = MEMORY[0x1E69792E8];
    v4 = *(MEMORY[0x1E69792E8] + 112);
    *&result->_contentTransform3D.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&result->_contentTransform3D.m43 = v4;
    v5 = v3[5];
    *&result->_contentTransform3D.m31 = v3[4];
    *&result->_contentTransform3D.m33 = v5;
    v6 = v3[1];
    *&result->_contentTransform3D.m11 = *v3;
    *&result->_contentTransform3D.m13 = v6;
    v7 = v3[3];
    *&result->_contentTransform3D.m21 = v3[2];
    *&result->_contentTransform3D.m23 = v7;
    result->_insertingReply = 0;
  }

  return result;
}

- (CKTranscriptCollectionViewLayoutAttributes)initWithLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [(CKTranscriptCollectionViewLayoutAttributes *)self init];
  if (v5)
  {
    [attributesCopy frame];
    [(UICollectionViewLayoutAttributes *)v5 setFrame:?];
    [attributesCopy center];
    [(UICollectionViewLayoutAttributes *)v5 setCenter:?];
    [attributesCopy size];
    [(UICollectionViewLayoutAttributes *)v5 setSize:?];
    if (attributesCopy)
    {
      [attributesCopy transform3D];
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
    }

    v15 = v23;
    v16 = v24;
    v17 = v25;
    v18 = v26;
    v11 = v19;
    v12 = v20;
    v13 = v21;
    v14 = v22;
    [(UICollectionViewLayoutAttributes *)v5 setTransform3D:&v11];
    [attributesCopy bounds];
    [(UICollectionViewLayoutAttributes *)v5 setBounds:?];
    if (attributesCopy)
    {
      [attributesCopy transform];
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
    }

    v11 = v8;
    v12 = v9;
    v13 = v10;
    [(UICollectionViewLayoutAttributes *)v5 setTransform:&v11, v8, v9, v10];
    [attributesCopy alpha];
    [(UICollectionViewLayoutAttributes *)v5 setAlpha:?];
    -[UICollectionViewLayoutAttributes setZIndex:](v5, "setZIndex:", [attributesCopy zIndex]);
    indexPath = [attributesCopy indexPath];
    [(UICollectionViewLayoutAttributes *)v5 setIndexPath:indexPath];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20.receiver = self;
  v20.super_class = CKTranscriptCollectionViewLayoutAttributes;
  v5 = [(UICollectionViewLayoutAttributes *)&v20 copyWithZone:?];
  objc_storeStrong(v5 + 82, self->_chatItem);
  size = self->_targetFrame.size;
  *(v5 + 22) = self->_targetFrame.origin;
  *(v5 + 23) = size;
  v7 = *&self->_contentTransform3D.m11;
  v9 = *&self->_contentTransform3D.m21;
  v8 = *&self->_contentTransform3D.m23;
  *(v5 + 472) = *&self->_contentTransform3D.m13;
  *(v5 + 488) = v9;
  *(v5 + 456) = v7;
  v10 = *&self->_contentTransform3D.m31;
  v12 = *&self->_contentTransform3D.m41;
  v11 = *&self->_contentTransform3D.m43;
  *(v5 + 536) = *&self->_contentTransform3D.m33;
  *(v5 + 552) = v12;
  *(v5 + 504) = v8;
  *(v5 + 520) = v10;
  *(v5 + 568) = v11;
  *(v5 + 680) = self->_parentChatItemSize;
  *(v5 + 84) = *&self->_parentRotationOffset;
  *(v5 + 78) = *&self->_associatedVerticalShift;
  v13 = [(NSMutableArray *)self->_associatedLayoutAttributes mutableCopyWithZone:zone];
  v14 = *(v5 + 79);
  *(v5 + 79) = v13;

  v15 = [(CKTranscriptCollectionViewLayoutAttributes *)self->_initialParentLayoutAttributes copy];
  v16 = *(v5 + 80);
  *(v5 + 80) = v15;

  v17 = [(NSArray *)self->_threadGroupLayoutAttributes copy];
  v18 = *(v5 + 81);
  *(v5 + 81) = v17;

  v5[664] = self->_insertingReply;
  *(v5 + 55) = *&self->_initialBalloonOffsetX;
  *(v5 + 56) = *&self->_currentBalloonOffsetX;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = *&v5->_contentTransform3D.m11;
      v7 = *&v5->_contentTransform3D.m13;
      v8 = *&v5->_contentTransform3D.m23;
      *&a.m21 = *&v5->_contentTransform3D.m21;
      *&a.m23 = v8;
      *&a.m11 = v6;
      *&a.m13 = v7;
      v9 = *&v5->_contentTransform3D.m31;
      v10 = *&v5->_contentTransform3D.m33;
      v11 = *&v5->_contentTransform3D.m43;
      *&a.m41 = *&v5->_contentTransform3D.m41;
      *&a.m43 = v11;
      *&a.m31 = v9;
      *&a.m33 = v10;
      v12 = *&self->_contentTransform3D.m33;
      *&b.m31 = *&self->_contentTransform3D.m31;
      *&b.m33 = v12;
      v13 = *&self->_contentTransform3D.m43;
      *&b.m41 = *&self->_contentTransform3D.m41;
      *&b.m43 = v13;
      v14 = *&self->_contentTransform3D.m13;
      *&b.m11 = *&self->_contentTransform3D.m11;
      *&b.m13 = v14;
      v15 = *&self->_contentTransform3D.m23;
      *&b.m21 = *&self->_contentTransform3D.m21;
      *&b.m23 = v15;
      if (!CATransform3DEqualToTransform(&a, &b))
      {
        goto LABEL_16;
      }

      v16 = 0;
      if (v5->_parentChatItemSize.width != self->_parentChatItemSize.width || v5->_parentChatItemSize.height != self->_parentChatItemSize.height)
      {
        goto LABEL_17;
      }

      if (v5->_parentRotationOffset == self->_parentRotationOffset && v5->_associatedVerticalShift == self->_associatedVerticalShift && ((initialParentLayoutAttributes = v5->_initialParentLayoutAttributes, initialParentLayoutAttributes == self->_initialParentLayoutAttributes) || [(CKTranscriptCollectionViewLayoutAttributes *)initialParentLayoutAttributes isEqual:?]) && v5->_threadGroupLayoutAttributes == self->_threadGroupLayoutAttributes && v5->_insertingReply == self->_insertingReply && v5->_currentBalloonOffsetX == self->_currentBalloonOffsetX)
      {
        v19.receiver = self;
        v19.super_class = CKTranscriptCollectionViewLayoutAttributes;
        v16 = [(UICollectionViewLayoutAttributes *)&v19 isEqual:v5];
      }

      else
      {
LABEL_16:
        v16 = 0;
      }

LABEL_17:

      goto LABEL_18;
    }

    v16 = 0;
  }

LABEL_18:

  return v16;
}

- (CATransform3D)contentTransform3D
{
  v3 = *&self[4].m14;
  *&retstr->m31 = *&self[4].m12;
  *&retstr->m33 = v3;
  v4 = *&self[4].m24;
  *&retstr->m41 = *&self[4].m22;
  *&retstr->m43 = v4;
  v5 = *&self[3].m34;
  *&retstr->m11 = *&self[3].m32;
  *&retstr->m13 = v5;
  v6 = *&self[3].m44;
  *&retstr->m21 = *&self[3].m42;
  *&retstr->m23 = v6;
  return self;
}

- (CGSize)parentChatItemSize
{
  width = self->_parentChatItemSize.width;
  height = self->_parentChatItemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end