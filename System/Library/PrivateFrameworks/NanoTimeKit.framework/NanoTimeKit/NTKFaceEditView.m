@interface NTKFaceEditView
+ (CGRect)screenBottomAlignedKeylineLabelFrameForText:(id)a3;
- (CGPoint)pageOffsetFromCenter:(int64_t)a3;
- (CGRect)cachedScreenBottomAlignedKeylineLabelFrameForText:(id)a3;
- (CGRect)colorPickerFrame;
- (CGRect)keylineFrameAtSlot:(id)a3;
- (NTKFaceEditView)initWithFace:(id)a3;
- (NTKFaceEditViewDelegate)delegate;
@end

@implementation NTKFaceEditView

- (NTKFaceEditView)initWithFace:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKFaceEditView;
  return [(NTKFaceEditView *)&v4 initWithFrame:a3, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
}

- (CGPoint)pageOffsetFromCenter:(int64_t)a3
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

+ (CGRect)screenBottomAlignedKeylineLabelFrameForText:(id)a3
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)cachedScreenBottomAlignedKeylineLabelFrameForText:(id)a3
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)colorPickerFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)keylineFrameAtSlot:(id)a3
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (NTKFaceEditViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end