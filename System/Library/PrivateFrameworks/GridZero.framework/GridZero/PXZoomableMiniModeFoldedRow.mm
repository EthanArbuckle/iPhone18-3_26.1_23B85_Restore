@interface PXZoomableMiniModeFoldedRow
- ($54B668FA3CFF7C50914A1C899F2834C0)collapseProgress;
- (PXZoomableMiniModeFoldedRow)initWithCollapseProgress:(id *)progress yPosition:(double)position;
- (id)description;
@end

@implementation PXZoomableMiniModeFoldedRow

- ($54B668FA3CFF7C50914A1C899F2834C0)collapseProgress
{
  v3 = *&self->var4;
  *&retstr->var0 = *&self->var2;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[1].var0;
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p collapseProgress.blur:%.2f yPosition:%.2f", v5, self, *&self->_collapseProgress.blur, *&self->_yPosition];;

  return v6;
}

- (PXZoomableMiniModeFoldedRow)initWithCollapseProgress:(id *)progress yPosition:(double)position
{
  v9.receiver = self;
  v9.super_class = PXZoomableMiniModeFoldedRow;
  result = [(PXZoomableMiniModeFoldedRow *)&v9 init];
  if (result)
  {
    v7 = *&progress->var0;
    v8 = *&progress->var4;
    *&result->_collapseProgress.translation = *&progress->var2;
    *&result->_collapseProgress.blur = v8;
    *&result->_collapseProgress.alpha = v7;
    result->_yPosition = position;
  }

  return result;
}

@end