@interface TDCustomAssetImportInfo
- ($01BB1521EC52D44A8E7628F5261DCEC8)sliceInsets;
- (CGRect)alignmentRect;
- (CGSize)resizableSliceSize;
- (int64_t)renditionSubtype;
- (void)dealloc;
@end

@implementation TDCustomAssetImportInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TDCustomAssetImportInfo;
  [(TDCustomAssetImportInfo *)&v3 dealloc];
}

- (int64_t)renditionSubtype
{
  if ([(TDCustomAssetImportInfo *)self resizingMode])
  {
    if ([(TDCustomAssetImportInfo *)self resizingMode]== 1)
    {
      renditionType = [(TDCustomAssetImportInfo *)self renditionType];
      if (renditionType < 4)
      {
        v4 = &unk_247A49448;
        return v4[renditionType];
      }
    }
  }

  else
  {
    renditionType = [(TDCustomAssetImportInfo *)self renditionType];
    if (renditionType < 4)
    {
      v4 = &unk_247A49428;
      return v4[renditionType];
    }
  }

  return 0;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)sliceInsets
{
  top = self->_sliceInsets.top;
  left = self->_sliceInsets.left;
  bottom = self->_sliceInsets.bottom;
  right = self->_sliceInsets.right;
  result.var3 = right;
  result.var2 = bottom;
  result.var1 = left;
  result.var0 = top;
  return result;
}

- (CGSize)resizableSliceSize
{
  width = self->_resizableSliceSize.width;
  height = self->_resizableSliceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)alignmentRect
{
  x = self->_alignmentRect.origin.x;
  y = self->_alignmentRect.origin.y;
  width = self->_alignmentRect.size.width;
  height = self->_alignmentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end