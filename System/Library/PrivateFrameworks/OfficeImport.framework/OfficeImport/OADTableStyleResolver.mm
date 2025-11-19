@interface OADTableStyleResolver
- (OADTMatrixPos)dominantCellInRowRange:(_NSRange)a3 columnRange:(_NSRange)a4;
- (OADTableStyleResolver)initWithTable:(id)a3;
- (id)sourceCellAtI1:(int)a3 i2:(int)a4 dir1:(int)a5;
- (id)strokeOfSegmentNormalToDir1:(int)a3 i1:(int)a4 fromI2:(int)a5;
- (int)cellCountAlongDir:(int)a3;
- (int)cellParityRelativeToDir1:(int)a3 i1:(int)a4 i2:(int)a5;
- (void)applyBandCellStyles;
- (void)applyBandStrokes;
- (void)applyCellStyleFromPart:(int)a3 dir1:(int)a4 fromI1:(int)a5 fromI2:(int)a6 dir1Span:(int)a7 dir2Span:(int)a8;
- (void)applyCellStyleOfBandsNormalToDir:(int)a3 parity:(int)a4 part:(int)a5;
- (void)applyCellStyleOfExtremeVectorNormalToDir:(int)a3 atExtremePos:(int)a4 part:(int)a5;
- (void)applyCornerCellStyleWithRowPos:(int)a3 columnPos:(int)a4 part:(int)a5;
- (void)applyCornerCellStyles;
- (void)applyCornerStrokes;
- (void)applyCornerStrokesWithRowPos:(int)a3 columnPos:(int)a4 part:(int)a5;
- (void)applyExtremeVectorCellStyles;
- (void)applyExtremeVectorStrokes;
- (void)applyResolvedPartStyle:(id)a3 leftStroke:(id)a4 rightStroke:(id)a5 topStroke:(id)a6 bottomStroke:(id)a7 toCell:(id)a8;
- (void)applyResolvedStyling;
- (void)applyStroke:(int)a3 fromPart:(int)a4 normalToDir1:(int)a5 i1:(int)a6 fromI2:(int)a7 dir2Span:(int)a8;
- (void)applyStrokeOfExtremeVectorNormalToDir:(int)a3 atExtremePos:(int)a4;
- (void)applyStrokesFromPart:(int)a3 fromPos:(OADTMatrixPos)a4 toPos:(OADTMatrixPos)a5;
- (void)applyStrokesOfBandsNormalToDir:(int)a3 parity:(int)a4 part:(int)a5;
- (void)applyStyleStrokes;
- (void)applyTextStyle:(id)a3 toCell:(id)a4;
- (void)applyTextStyle:(id)a3 toParagraph:(id)a4;
- (void)dealloc;
- (void)fixVectorAtExtremePositionFlags;
- (void)flatten;
- (void)setStroke:(id)a3 ofSegmentNormalToDir1:(int)a4 i1:(int)a5 fromI2:(int)a6;
@end

@implementation OADTableStyleResolver

- (OADTableStyleResolver)initWithTable:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = OADTableStyleResolver;
  v6 = [(OADTableStyleResolver *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mTable, a3);
    v8 = [(OADTable *)v7->mTable tableProperties];
    mTableProperties = v7->mTableProperties;
    v7->mTableProperties = v8;

    v10 = [(OADTableProperties *)v7->mTableProperties style];
    mTableStyle = v7->mTableStyle;
    v7->mTableStyle = v10;

    v12 = [(OADTable *)v7->mTable grid];
    v7->mColumnCount = [v12 columnCount];
    v7->mRowCount = [(OADTable *)v7->mTable rowCount];
  }

  return v7;
}

- (void)dealloc
{
  mCellMatrix = self->mCellMatrix;
  if (mCellMatrix)
  {
    v8 = (mCellMatrix + 8);
    std::vector<OADTableCell * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v8);
    MEMORY[0x25F897000](mCellMatrix, 0x1080C409938AC02);
  }

  mCellStyles = self->mCellStyles;
  if (mCellStyles)
  {
    v8 = (mCellStyles + 8);
    std::vector<OADTableCell * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v8);
    MEMORY[0x25F897000](mCellStyles, 0x1080C409938AC02);
  }

  v5 = self->mStrokes[0];
  if (v5)
  {
    v8 = (v5 + 8);
    std::vector<OADTableCell * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v8);
    MEMORY[0x25F897000](v5, 0x1080C409938AC02);
  }

  v6 = self->mStrokes[1];
  if (v6)
  {
    v8 = (v6 + 8);
    std::vector<OADTableCell * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v8);
    MEMORY[0x25F897000](v6, 0x1080C409938AC02);
  }

  v7.receiver = self;
  v7.super_class = OADTableStyleResolver;
  [(OADTableStyleResolver *)&v7 dealloc];
}

- (void)fixVectorAtExtremePositionFlags
{
  v3 = [(OADTableStyle *)self->mTableStyle firstRowStyle];

  if (!v3)
  {
    [(OADTableProperties *)self->mTableProperties setFirstRow:0];
  }

  v4 = [(OADTableStyle *)self->mTableStyle lastRowStyle];

  if (!v4)
  {
    [(OADTableProperties *)self->mTableProperties setLastRow:0];
  }

  v5 = [(OADTableStyle *)self->mTableStyle firstColumnStyle];

  if (!v5)
  {
    [(OADTableProperties *)self->mTableProperties setFirstColumn:0];
  }

  v6 = [(OADTableStyle *)self->mTableStyle lastColumnStyle];

  if (!v6)
  {
    mTableProperties = self->mTableProperties;

    [(OADTableProperties *)mTableProperties setLastColumn:0];
  }
}

- (id)sourceCellAtI1:(int)a3 i2:(int)a4 dir1:(int)a5
{
  OADTMatrixPos::OADTMatrixPos(&v8, a3, a4, a5);
  if ((v8 & 0x80000000) != 0 || v8 >= self->mRowCount || v8 < 0 || SHIDWORD(v8) >= self->mColumnCount)
  {
    v6 = 0;
  }

  else
  {
    v6 = *OADTFTemplateMatrix<OADTableCell * {__strong}>::operator[](self->mCellMatrix, v8);
  }

  return v6;
}

- (int)cellCountAlongDir:(int)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 36;
  }

  return *(&self->super.isa + v3);
}

- (void)applyCellStyleFromPart:(int)a3 dir1:(int)a4 fromI1:(int)a5 fromI2:(int)a6 dir1Span:(int)a7 dir2Span:(int)a8
{
  v14 = [(OADTableStyle *)self->mTableStyle partStyle:*&a3];
  if (v14)
  {
    OADTMatrixPos::OADTMatrixPos(v21, a5, a6, a4);
    OADTMatrixPos::OADTMatrixPos(&v19, a7, a8, a4);
    v15 = v19;
    if (v19 >= 1)
    {
      v16 = 0;
      v17 = v20;
      do
      {
        if (v17 >= 1)
        {
          v18 = 0;
          do
          {
            [*OADTFTemplateMatrix<OADTablePartStyle * {__strong}>::operator[](self->mCellStyles (v21[0] + v16) | ((v18 + v21[1]) << 32))];
            ++v18;
            v17 = v20;
          }

          while (v18 < v20);
          v15 = v19;
        }

        ++v16;
      }

      while (v16 < v15);
    }
  }
}

- (void)applyCellStyleOfBandsNormalToDir:(int)a3 parity:(int)a4 part:(int)a5
{
  v5 = *&a5;
  v7 = *&a3;
  if ([(OADTableProperties *)self->mTableProperties hasBandsNormalToDir:?])
  {
    v9 = [(OADTableProperties *)self->mTableProperties hasVectorNormalToDir:v7 atExtremePos:0];
    if (v9)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    if (a4 == 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    v12 = [(OADTableStyleResolver *)self cellCountAlongDir:v7];
    if ([(OADTableProperties *)self->mTableProperties hasVectorNormalToDir:v7 atExtremePos:1])
    {
      v13 = -2;
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 + v12;
    v15 = [(OADTableStyleResolver *)self cellCountAlongDir:v7 == 0];
    if (v11 <= v14)
    {
      v16 = v15;
      do
      {
        [(OADTableStyleResolver *)self applyCellStyleFromPart:v5 dir1:v7 fromI1:v11 fromI2:0 dir1Span:1 dir2Span:v16];
        v11 = (v11 + 2);
      }

      while (v11 <= v14);
    }
  }
}

- (void)applyBandCellStyles
{
  [(OADTableStyleResolver *)self applyCellStyleOfBandsNormalToDir:0 parity:1 part:2];
  [(OADTableStyleResolver *)self applyCellStyleOfBandsNormalToDir:0 parity:2 part:3];
  [(OADTableStyleResolver *)self applyCellStyleOfBandsNormalToDir:1 parity:1 part:4];

  [(OADTableStyleResolver *)self applyCellStyleOfBandsNormalToDir:1 parity:2 part:5];
}

- (void)applyCellStyleOfExtremeVectorNormalToDir:(int)a3 atExtremePos:(int)a4 part:(int)a5
{
  v5 = *&a5;
  v7 = *&a3;
  if ([OADTableProperties hasVectorNormalToDir:"hasVectorNormalToDir:atExtremePos:" atExtremePos:?])
  {
    if (a4 == 1)
    {
      v9 = [(OADTableStyleResolver *)self cellCountAlongDir:v7]- 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = [(OADTableStyleResolver *)self cellCountAlongDir:v7 == 0];

    [(OADTableStyleResolver *)self applyCellStyleFromPart:v5 dir1:v7 fromI1:v9 fromI2:0 dir1Span:1 dir2Span:v10];
  }
}

- (void)applyExtremeVectorCellStyles
{
  [(OADTableStyleResolver *)self applyCellStyleOfExtremeVectorNormalToDir:1 atExtremePos:1 part:9];
  [(OADTableStyleResolver *)self applyCellStyleOfExtremeVectorNormalToDir:1 atExtremePos:0 part:8];
  [(OADTableStyleResolver *)self applyCellStyleOfExtremeVectorNormalToDir:0 atExtremePos:1 part:7];

  [(OADTableStyleResolver *)self applyCellStyleOfExtremeVectorNormalToDir:0 atExtremePos:0 part:6];
}

- (void)applyCornerCellStyleWithRowPos:(int)a3 columnPos:(int)a4 part:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  if (![(OADTableProperties *)self->mTableProperties hasVectorNormalToDir:0 atExtremePos:*&a3]|| ![(OADTableProperties *)self->mTableProperties hasVectorNormalToDir:1 atExtremePos:v6])
  {
    return;
  }

  if (!a3)
  {
    v9 = 0;
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v9 = (self->mRowCount - 1);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_5:
  v10 = (self->mColumnCount - 1);
LABEL_9:

  [(OADTableStyleResolver *)self applyCellStyleFromPart:v5 dir1:0 fromI1:v9 fromI2:v10 dir1Span:1 dir2Span:1];
}

- (void)applyCornerCellStyles
{
  [(OADTableStyleResolver *)self applyCornerCellStyleWithRowPos:1 columnPos:1 part:13];
  [(OADTableStyleResolver *)self applyCornerCellStyleWithRowPos:1 columnPos:0 part:12];
  [(OADTableStyleResolver *)self applyCornerCellStyleWithRowPos:0 columnPos:1 part:11];

  [(OADTableStyleResolver *)self applyCornerCellStyleWithRowPos:0 columnPos:0 part:10];
}

- (OADTMatrixPos)dominantCellInRowRange:(_NSRange)a3 columnRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3.length;
  v7 = a3.location;
  if (a3.length != 1 || a4.length != 1)
  {
    v9 = [(OADTableProperties *)self->mTableProperties firstRow];
    v10 = [(OADTableProperties *)self->mTableProperties lastRow]? self->mRowCount - 1 : -1;
    v11 = v9 - 1;
    v12 = [(OADTableProperties *)self->mTableProperties firstColumn]- 1;
    v13 = [(OADTableProperties *)self->mTableProperties lastColumn]? self->mColumnCount - 1 : -1;
    v14 = v7 == v11 && location == v12;
    if (!v14)
    {
      v15 = location + length - 1;
      if (v7 == v11 && v15 == v13)
      {
        location = (location + length - 1);
      }

      else
      {
        v16 = v7 + v6 - 1;
        if (v16 == v10 && location == v12)
        {
          v7 = v7 + v6 - 1;
        }

        else
        {
          v17 = v7 == v11;
          if (v7 == v11)
          {
            v18 = v11;
          }

          else
          {
            v18 = v10;
          }

          v14 = v16 == v10;
          v19 = v16 == v10;
          if (v14)
          {
            v17 = 1;
          }

          v14 = v15 == v13;
          v20 = v15 == v13;
          if (v14)
          {
            v21 = v13;
          }

          else
          {
            v21 = location;
          }

          if (v19 && v20)
          {
            v22 = v10;
          }

          else
          {
            v13 = location;
            v22 = v18;
          }

          if (location == v12)
          {
            v23 = v12;
          }

          else
          {
            v23 = v21;
          }

          if (v17)
          {
            location = v13;
          }

          else
          {
            location = v23;
          }

          if (v17)
          {
            v7 = v22;
          }
        }
      }
    }
  }

  return (v7 | (location << 32));
}

- (id)strokeOfSegmentNormalToDir1:(int)a3 i1:(int)a4 fromI2:(int)a5
{
  v5 = *OADTFTemplateMatrix<OADStroke * {__strong}>::operator[](self->mStrokes[a3], a4 | (*&a5 << 32));

  return v5;
}

- (void)setStroke:(id)a3 ofSegmentNormalToDir1:(int)a4 i1:(int)a5 fromI2:(int)a6
{
  v6 = *&a6;
  v10 = a3;
  v11 = OADTFTemplateMatrix<OADStroke * {__strong}>::operator[](self->mStrokes[a4], a5 | (v6 << 32));
  v12 = *v11;
  *v11 = v10;
}

- (void)applyStroke:(int)a3 fromPart:(int)a4 normalToDir1:(int)a5 i1:(int)a6 fromI2:(int)a7 dir2Span:(int)a8
{
  v9 = *&a7;
  v10 = *&a6;
  v11 = *&a5;
  v13 = *&a3;
  v20 = [(OADTableStyle *)self->mTableStyle partStyle:*&a4];
  v15 = [v20 cellStyle];
  v16 = [v15 borderStyle];
  v17 = [v16 stroke:v13];

  v21 = v17;
  if (!v17)
  {
    if (a4 != 1)
    {
      v21 = 0;
      goto LABEL_11;
    }

    v21 = +[OADTableCellBorderStyle defaultAxisParallelStroke];
  }

  v18 = (a8 + v9);
  if (a8 >= 1)
  {
    v19 = v9;
    do
    {
      [(OADTableStyleResolver *)self setStroke:v21 ofSegmentNormalToDir1:v11 i1:v10 fromI2:v19];
      v19 = (v19 + 1);
    }

    while (v19 < v18);
  }

  if (a8 < 0)
  {
    do
    {
      [(OADTableStyleResolver *)self setStroke:v21 ofSegmentNormalToDir1:v11 i1:v10 fromI2:v18];
      v18 = (v18 + 1);
    }

    while (v18 < v9);
  }

LABEL_11:
}

- (void)applyStrokesFromPart:(int)a3 fromPos:(OADTMatrixPos)a4 toPos:(OADTMatrixPos)a5
{
  v7 = *&a3;
  var1 = a4.var1;
  v10 = a5.var1;
  [(OADTableStyleResolver *)self applyStroke:3 fromPart:*&a3 normalToDir1:0 i1:a4 fromI2:a4.var1 toI2:a5.var1];
  [(OADTableStyleResolver *)self applyStroke:4 fromPart:v7 normalToDir1:0 i1:a5 fromI2:var1 toI2:v10];
  [(OADTableStyleResolver *)self applyStroke:1 fromPart:v7 normalToDir1:1 i1:var1 fromI2:a4 toI2:a5];
  [(OADTableStyleResolver *)self applyStroke:2 fromPart:v7 normalToDir1:1 i1:v10 fromI2:a4 toI2:a5];
  v11 = (a4.var0 + 1);
  if (v11 < a5.var0)
  {
    do
    {
      [(OADTableStyleResolver *)self applyStroke:5 fromPart:v7 normalToDir1:0 i1:v11 fromI2:var1 toI2:v10];
      v11 = (v11 + 1);
    }

    while (a5.var0 != v11);
  }

  v12 = (var1 + 1);
  if (v12 < v10)
  {
    do
    {
      [(OADTableStyleResolver *)self applyStroke:6 fromPart:v7 normalToDir1:1 i1:v12 fromI2:a4 toI2:a5];
      v12 = (v12 + 1);
    }

    while (v10 != v12);
  }
}

- (int)cellParityRelativeToDir1:(int)a3 i1:(int)a4 i2:(int)a5
{
  v5 = *&a3;
  v7 = [(OADTableStyleResolver *)self sourceCellAtI1:*&a4 i2:*&a5 dir1:*&a3];
  v8 = v7;
  if (!v7 || (!v5 ? (v9 = [v7 topRow], v10 = objc_msgSend(v8, "rowSpan")) : (v9 = objc_msgSend(v7, "leftColumn"), v10 = objc_msgSend(v8, "gridSpan")), (v11 = v10, v12 = -[OADTableProperties hasVectorNormalToDir:atExtremePos:](self->mTableProperties, "hasVectorNormalToDir:atExtremePos:", v5, 0), v13 = -[OADTableProperties hasVectorNormalToDir:atExtremePos:](self->mTableProperties, "hasVectorNormalToDir:atExtremePos:", v5, 1), !v9) ? (v14 = v12) : (v14 = 0), v14 || v13 && v11 + v9 == -[OADTableStyleResolver cellCountAlongDir:](self, "cellCountAlongDir:", v5)))
  {
    v15 = 0;
  }

  else if ((v12 ^ v9))
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)applyStrokesOfBandsNormalToDir:(int)a3 parity:(int)a4 part:(int)a5
{
  v6 = *&a3;
  v8 = [(OADTableProperties *)self->mTableProperties hasVectorNormalToDir:*&a3 atExtremePos:0];
  v9 = [(OADTableStyleResolver *)self cellCountAlongDir:v6];
  if ([(OADTableProperties *)self->mTableProperties hasVectorNormalToDir:v6 atExtremePos:1])
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 + v9;
  HIDWORD(v36) = v6 == 0;
  v12 = [(OADTableStyleResolver *)self cellCountAlongDir:?];
  LODWORD(v36) = v8;
  v37 = v11;
  if (v11 >= v8)
  {
    if (v6)
    {
      v13 = 3;
    }

    else
    {
      v13 = 1;
    }

    if (v6)
    {
      v14 = 5;
    }

    else
    {
      v14 = 6;
    }

    if (v6)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    v16 = v36;
    do
    {
      if ((v12 & 0x80000000) == 0)
      {
        v17 = -1;
        do
        {
          v18 = (v17 + 1);
          v19 = [(OADTableStyleResolver *)self cellParityRelativeToDir1:v6 i1:v16 i2:v36];
          v20 = [(OADTableStyleResolver *)self cellParityRelativeToDir1:v6 i1:v16 i2:v18];
          v21 = v20 == a4 || v19 != a4;
          if (v19 != a4 && v20 == a4)
          {
            v22 = v13;
          }

          else
          {
            v22 = 0;
          }

          if (v19 == a4 && v20 == a4)
          {
            v22 = v14;
          }

          if (v21)
          {
            v23 = v22;
          }

          else
          {
            v23 = v15;
          }

          if (v23)
          {
            [(OADTableStyleResolver *)self applyStroke:v23 fromPart:a5 normalToDir1:HIDWORD(v36) i1:v18 fromI2:v16 dir2Span:1];
          }

          v17 = v18;
        }

        while (v12 != v18);
      }

      v24 = v16 == v37;
      v16 = (v16 + 1);
    }

    while (!v24);
  }

  if (v12 >= 1)
  {
    v25 = 0;
    HIDWORD(v36) = v37 + 1;
    if (v6)
    {
      v26 = 1;
    }

    else
    {
      v26 = 3;
    }

    if (v6)
    {
      v27 = 6;
    }

    else
    {
      v27 = 5;
    }

    if (v6)
    {
      v28 = 2;
    }

    else
    {
      v28 = 4;
    }

    do
    {
      v29 = v36;
      if (SHIDWORD(v36) >= v36)
      {
        do
        {
          v30 = [(OADTableStyleResolver *)self cellParityRelativeToDir1:v6 i1:(v29 - 1) i2:v25, v36];
          v31 = [(OADTableStyleResolver *)self cellParityRelativeToDir1:v6 i1:v29 i2:v25];
          v32 = v31 == a4 || v30 != a4;
          if (v30 != a4 && v31 == a4)
          {
            v33 = v26;
          }

          else
          {
            v33 = 0;
          }

          if (v30 == a4 && v31 == a4)
          {
            v33 = v27;
          }

          if (v32)
          {
            v34 = v33;
          }

          else
          {
            v34 = v28;
          }

          if (v34)
          {
            [(OADTableStyleResolver *)self applyStroke:v34 fromPart:a5 normalToDir1:v6 i1:v29 fromI2:v25 dir2Span:1];
          }

          v35 = v29 <= v37;
          v29 = (v29 + 1);
        }

        while (v35);
      }

      v25 = (v25 + 1);
    }

    while (v25 != v12);
  }
}

- (void)applyBandStrokes
{
  if ([(OADTableProperties *)self->mTableProperties hasBandsNormalToDir:0])
  {
    [(OADTableStyleResolver *)self applyStrokesOfBandsNormalToDir:0 parity:1 part:2];
    [(OADTableStyleResolver *)self applyStrokesOfBandsNormalToDir:0 parity:2 part:3];
  }

  if ([(OADTableProperties *)self->mTableProperties hasBandsNormalToDir:1])
  {
    [(OADTableStyleResolver *)self applyStrokesOfBandsNormalToDir:1 parity:1 part:4];

    [(OADTableStyleResolver *)self applyStrokesOfBandsNormalToDir:1 parity:2 part:5];
  }
}

- (void)applyStrokeOfExtremeVectorNormalToDir:(int)a3 atExtremePos:(int)a4
{
  v5 = *&a3;
  if ([OADTableProperties hasVectorNormalToDir:"hasVectorNormalToDir:atExtremePos:" atExtremePos:?])
  {
    if (a4 == 1)
    {
      v7 = [(OADTableStyleResolver *)self cellCountAlongDir:v5];
      v8 = [(OADTableStyleResolver *)self cellCountAlongDir:v5]- 1;
      if (v5)
      {
        v9 = 5;
      }

      else
      {
        v9 = 6;
      }

      v34 = v9;
      if (v5)
      {
        v10 = 1;
      }

      else
      {
        v10 = 3;
      }

      v38 = v10;
      if (v5)
      {
        v11 = 4;
      }

      else
      {
        v11 = 2;
      }

      if (v5)
      {
        v12 = 3;
      }

      else
      {
        v12 = 1;
      }

      if (v5)
      {
        v13 = 2;
      }

      else
      {
        v13 = 4;
      }

      if (v5)
      {
        v14 = 9;
      }

      else
      {
        v14 = 7;
      }

      v15 = -1;
    }

    else
    {
      v8 = 0;
      v7 = 0;
      if (v5)
      {
        v16 = 5;
      }

      else
      {
        v16 = 6;
      }

      v34 = v16;
      if (v5)
      {
        v17 = 2;
      }

      else
      {
        v17 = 4;
      }

      v38 = v17;
      if (v5)
      {
        v11 = 4;
      }

      else
      {
        v11 = 2;
      }

      if (v5)
      {
        v12 = 3;
      }

      else
      {
        v12 = 1;
      }

      if (v5)
      {
        v13 = 1;
      }

      else
      {
        v13 = 3;
      }

      if (v5)
      {
        v14 = 8;
      }

      else
      {
        v14 = 6;
      }

      v15 = 1;
    }

    v40 = v15;
    v18 = v5 == 0;
    v41 = [(OADTableStyleResolver *)self cellCountAlongDir:v18];
    [(OADTableStyleResolver *)self applyStroke:v13 fromPart:v14 normalToDir1:v5 i1:v7 fromI2:0 toI2:?];
    v42 = v8;
    v32 = [(OADTableStyleResolver *)self sourceCellAtI1:v8 i2:0 dir1:v5];
    -[OADTableStyleResolver applyStroke:fromPart:normalToDir1:i1:fromI2:dir2Span:](self, "applyStroke:fromPart:normalToDir1:i1:fromI2:dir2Span:", v12, v14, v18, 0, v7, [v32 spanAlongDir:v5] * v40);
    v39 = v14;
    v35 = [(OADTableStyleResolver *)self sourceCellAtI1:v8 i2:(v41 - 1) dir1:v5];
    -[OADTableStyleResolver applyStroke:fromPart:normalToDir1:i1:fromI2:dir2Span:](self, "applyStroke:fromPart:normalToDir1:i1:fromI2:dir2Span:", v11, v14, v18, v41, v7, [v35 spanAlongDir:v5] * v40);
    v19 = v35;
    if (v41 >= 1)
    {
      v20 = 0;
      v37 = v18;
      do
      {
        v21 = [(OADTableStyleResolver *)self sourceCellAtI1:v42 i2:v20 dir1:v5];
        v22 = [v21 spanAlongDir:v5];
        v23 = [v21 spanAlongDir:v18];
        [(OADTableStyleResolver *)self applyStroke:v38 fromPart:v39 normalToDir1:v5 i1:(v7 + v22 * v40) fromI2:v20 dir2Span:v23];
        v20 = (v23 + v20);

        v18 = v37;
      }

      while (v20 < v41);
      v24 = 0;
      v33 = v5;
      while (1)
      {
        v25 = [(OADTableStyleResolver *)self sourceCellAtI1:v42 i2:v24 dir1:v5];
        v26 = [v25 spanAlongDir:v5];
        v24 = [v25 spanAlongDir:v18] + v24;
        if (v24 >= v41)
        {
          break;
        }

        [(OADTableStyleResolver *)self sourceCellAtI1:v42 i2:v24 dir1:v5];
        v36 = v27 = v7;
        v28 = [v36 spanAlongDir:v5];
        v29 = v28;
        if (v26 >= v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

        [(OADTableStyleResolver *)self applyStroke:v34 fromPart:v39 normalToDir1:v37 i1:v24 fromI2:v27 dir2Span:(v30 * v40)];
        if (v26 <= v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = v26;
        }

        [(OADTableStyleResolver *)self applyStroke:v38 fromPart:v39 normalToDir1:v37 i1:v24 fromI2:(v30 * v40 + v27) dir2Span:((v31 - v30) * v40)];

        v7 = v27;
        v5 = v33;
        v19 = v35;
        v18 = v37;
      }
    }
  }
}

- (void)applyExtremeVectorStrokes
{
  [(OADTableStyleResolver *)self applyStrokeOfExtremeVectorNormalToDir:1 atExtremePos:1];
  [(OADTableStyleResolver *)self applyStrokeOfExtremeVectorNormalToDir:1 atExtremePos:0];
  [(OADTableStyleResolver *)self applyStrokeOfExtremeVectorNormalToDir:0 atExtremePos:1];

  [(OADTableStyleResolver *)self applyStrokeOfExtremeVectorNormalToDir:0 atExtremePos:0];
}

- (void)applyCornerStrokesWithRowPos:(int)a3 columnPos:(int)a4 part:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  if (![(OADTableProperties *)self->mTableProperties hasVectorNormalToDir:0 atExtremePos:*&a3]|| ![(OADTableProperties *)self->mTableProperties hasVectorNormalToDir:1 atExtremePos:v6])
  {
    return;
  }

  if (!a3)
  {
    v9 = 0;
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v9 = (self->mRowCount - 1);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_5:
  v10 = (self->mColumnCount - 1);
LABEL_9:
  v13 = [(OADTableStyleResolver *)self sourceCellAtI1:v9 i2:v10 dir1:0];
  v11 = [v13 topRow];
  v12 = [v13 leftColumn];
  -[OADTableStyleResolver applyStrokesFromPart:fromPos:toPos:](self, "applyStrokesFromPart:fromPos:toPos:", v5, v11 | (v12 << 32), ([v13 rowSpan] + v11) | ((objc_msgSend(v13, "gridSpan") + v12) << 32));
}

- (void)applyCornerStrokes
{
  [(OADTableStyleResolver *)self applyCornerStrokesWithRowPos:1 columnPos:1 part:13];
  [(OADTableStyleResolver *)self applyCornerStrokesWithRowPos:1 columnPos:0 part:12];
  [(OADTableStyleResolver *)self applyCornerStrokesWithRowPos:0 columnPos:1 part:11];

  [(OADTableStyleResolver *)self applyCornerStrokesWithRowPos:0 columnPos:0 part:10];
}

- (void)applyStyleStrokes
{
  [(OADTableStyleResolver *)self createStrokeMatrices];
  [(OADTableStyleResolver *)self applyWholeTableStrokes];
  [(OADTableStyleResolver *)self applyBandStrokes];
  [(OADTableStyleResolver *)self applyExtremeVectorStrokes];

  [(OADTableStyleResolver *)self applyCornerStrokes];
}

- (void)applyTextStyle:(id)a3 toParagraph:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADTableStyleResolver applyTextStyle:toParagraph:]"];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADTableStyleFlattener.mm"];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:731 isFatal:0 description:"Abstract method not overridden by %@", v10];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v12 stringWithFormat:@"Abstract method not overridden by %@: %s", v14, "-[OADTableStyleResolver applyTextStyle:toParagraph:]"];
  v16 = [v11 exceptionWithName:*MEMORY[0x277CBE658] reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)applyTextStyle:(id)a3 toCell:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v6 textBody];
  for (i = 0; [v7 paragraphCount] > i; ++i)
  {
    v9 = [v7 paragraphAtIndex:i];
    [(OADTableStyleResolver *)self applyTextStyle:v10 toParagraph:v9];
  }
}

- (void)applyResolvedPartStyle:(id)a3 leftStroke:(id)a4 rightStroke:(id)a5 topStroke:(id)a6 bottomStroke:(id)a7 toCell:(id)a8
{
  a3;
  a4;
  a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADTableStyleResolver applyResolvedPartStyle:leftStroke:rightStroke:topStroke:bottomStroke:toCell:]"];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADTableStyleFlattener.mm"];
  v18 = objc_opt_class();
  v26 = NSStringFromClass(v18);
  [OITSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:749 isFatal:0 description:"Abstract method not overridden by %@", v26];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v19 = MEMORY[0x277CBEAD8];
  v20 = MEMORY[0x277CCACA8];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = [v20 stringWithFormat:@"Abstract method not overridden by %@: %s", v22, "-[OADTableStyleResolver applyResolvedPartStyle:leftStroke:rightStroke:topStroke:bottomStroke:toCell:]"];
  v24 = [v19 exceptionWithName:*MEMORY[0x277CBE658] reason:v23 userInfo:0];
  v25 = v24;

  objc_exception_throw(v24);
}

- (void)applyResolvedStyling
{
  mRowCount = self->mRowCount;
  if (mRowCount >= 1)
  {
    v4 = 0;
    LODWORD(mColumnCount) = self->mColumnCount;
    do
    {
      if (mColumnCount >= 1)
      {
        v6 = 0;
        v7 = v4;
        do
        {
          v8 = *OADTFTemplateMatrix<OADTableCell * {__strong}>::operator[](self->mCellMatrix, v7);
          if (v4 == [v8 topRow] && v6 == objc_msgSend(v8, "leftColumn"))
          {
            v9 = *OADTFTemplateMatrix<OADTablePartStyle * {__strong}>::operator[](self->mCellStyles, -[OADTableStyleResolver dominantCellInRowRange:columnRange:](self, "dominantCellInRowRange:columnRange:", [v8 topRow], objc_msgSend(v8, "rowSpan"), objc_msgSend(v8, "leftColumn"), objc_msgSend(v8, "gridSpan")));
            v10 = [(OADTableStyleResolver *)self strokeOfSegmentNormalToDir1:1 i1:v6 fromI2:v4];
            v11 = -[OADTableStyleResolver strokeOfSegmentNormalToDir1:i1:fromI2:](self, "strokeOfSegmentNormalToDir1:i1:fromI2:", 1, v6 + [v8 gridSpan], v4);
            v12 = [(OADTableStyleResolver *)self strokeOfSegmentNormalToDir1:0 i1:v4 fromI2:v6];
            v13 = -[OADTableStyleResolver strokeOfSegmentNormalToDir1:i1:fromI2:](self, "strokeOfSegmentNormalToDir1:i1:fromI2:", 0, [v8 rowSpan] + v4, v6);
            [(OADTableStyleResolver *)self applyResolvedPartStyle:v9 leftStroke:v10 rightStroke:v11 topStroke:v12 bottomStroke:v13 toCell:v8];
          }

          ++v6;
          mColumnCount = self->mColumnCount;
          v7 += 0x100000000;
        }

        while (v6 < mColumnCount);
        mRowCount = self->mRowCount;
      }

      ++v4;
    }

    while (v4 < mRowCount);
  }
}

- (void)flatten
{
  [(OADTableStyleResolver *)self fixVectorAtExtremePositionFlags];
  [(OADTableStyleResolver *)self loadCells];
  [(OADTableStyleResolver *)self applyCellStyles];
  [(OADTableStyleResolver *)self applyStyleStrokes];

  [(OADTableStyleResolver *)self applyResolvedStyling];
}

@end