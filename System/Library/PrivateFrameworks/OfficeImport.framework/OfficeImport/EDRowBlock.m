@interface EDRowBlock
+ (id)rowBlock;
- (EDCellHeader)addCellWithColumnNumber:(unsigned int)a3 type:(int)a4 isFormulaCell:(BOOL)a5 rowInfo:(EDRowInfo *)a6 rowBlocks:(id)a7;
- (EDCellHeader)cellAtIndex:(unsigned int)a3 rowInfo:(EDRowInfo *)a4;
- (EDCellHeader)cellWithColumnNumber:(unsigned int)a3 rowInfo:(EDRowInfo *)a4;
- (EDRowBlock)init;
- (EDRowInfo)addRowInfoWithRowNumber:(unsigned int)a3 cellCountHint:(unsigned int)a4;
- (EDRowInfo)rowInfoAtIndex:(unsigned int)a3;
- (EDRowInfo)rowInfoWithRowNumber:(unsigned int)a3 createIfNil:(BOOL)a4;
- (id)description;
- (unint64_t)index;
- (unint64_t)startOfCellsOrThrow;
- (unsigned)expectedIndexOfCellWithColumnNumber:(unsigned int)a3 rowInfo:(EDRowInfo *)a4;
- (unsigned)firstRowNumber;
- (unsigned)indexOfCellWithColumnNumber:(unsigned int)a3 rowInfo:(EDRowInfo *)a4;
- (unsigned)indexOfRowInfoWithRowNumber:(unsigned int)a3;
- (unsigned)lastRowNumber;
- (unsigned)rowCount;
- (void)archiveByAppendingToMutableData:(__CFData *)a3;
- (void)checkCellOffsetOrThrow:(unint64_t)a3;
- (void)dealloc;
- (void)doneWithContent;
- (void)incrementIndex;
- (void)removeCellAtIndex:(unsigned int)a3 rowInfo:(EDRowInfo *)a4;
- (void)setIndex:(unint64_t)a3;
- (void)unarchiveFromData:(__CFData *)a3 offset:(unint64_t *)a4;
@end

@implementation EDRowBlock

+ (id)rowBlock
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (EDRowBlock)init
{
  v7.receiver = self;
  v7.super_class = EDRowBlock;
  v2 = [(EDRowBlock *)&v7 init];
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
    v2->mPackedData = Mutable;
    if (Mutable)
    {
      CFDataIncreaseLength(Mutable, 48);
      MutableBytePtr = CFDataGetMutableBytePtr(v2->mPackedData);
      if (MutableBytePtr)
      {
        *(MutableBytePtr + 4) = 24;
      }
    }

    v2->mCellOffsets = CFDataCreateMutable(v3, 0);
  }

  return v2;
}

- (unint64_t)startOfCellsOrThrow
{
  mPackedData = self->mPackedData;
  if (!mPackedData)
  {
    [TCMessageException raise:TCUnknownProblemMessage];
    mPackedData = self->mPackedData;
  }

  if (CFDataGetLength(mPackedData) <= 0x17)
  {
    [TCMessageException raise:TCUnknownProblemMessage];
  }

  return 24 * *CFDataGetMutableBytePtr(self->mPackedData) + 24;
}

- (unsigned)firstRowNumber
{
  v2 = [(EDRowBlock *)self rowInfoAtIndex:0];
  if (v2)
  {
    return v2->var1;
  }

  else
  {
    return -1;
  }
}

- (unint64_t)index
{
  mPackedData = self->mPackedData;
  if (mPackedData && self->mCellOffsets && ((MutableBytePtr = CFDataGetMutableBytePtr(mPackedData), v5 = CFDataGetMutableBytePtr(self->mCellOffsets), MutableBytePtr) ? (v6 = v5 == 0) : (v6 = 1), !v6))
  {
    return *(MutableBytePtr + 1);
  }

  else
  {
    return -1;
  }
}

- (unsigned)lastRowNumber
{
  mPackedData = self->mPackedData;
  if (mPackedData && self->mCellOffsets && ((MutableBytePtr = CFDataGetMutableBytePtr(mPackedData), v5 = CFDataGetMutableBytePtr(self->mCellOffsets), MutableBytePtr) ? (v6 = v5 == 0) : (v6 = 1), !v6 && *MutableBytePtr))
  {
    return *&MutableBytePtr[24 * (*MutableBytePtr - 1) + 28];
  }

  else
  {
    return -1;
  }
}

- (void)dealloc
{
  [(EDRowBlock *)self doneWithContent];
  v3.receiver = self;
  v3.super_class = EDRowBlock;
  [(EDRowBlock *)&v3 dealloc];
}

- (void)doneWithContent
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    CFRelease(mPackedData);
    self->mPackedData = 0;
  }

  mCellOffsets = self->mCellOffsets;
  if (mCellOffsets)
  {
    CFRelease(mCellOffsets);
    self->mCellOffsets = 0;
  }
}

- (unsigned)rowCount
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    if (!self->mCellOffsets || ((MutableBytePtr = CFDataGetMutableBytePtr(mPackedData), v5 = CFDataGetMutableBytePtr(self->mCellOffsets), MutableBytePtr) ? (v6 = v5 == 0) : (v6 = 1), v6))
    {
      LODWORD(mPackedData) = 0;
    }

    else
    {
      LODWORD(mPackedData) = *MutableBytePtr;
    }
  }

  return mPackedData;
}

- (EDRowInfo)rowInfoAtIndex:(unsigned int)a3
{
  result = self->mPackedData;
  if (result)
  {
    if (!self->mCellOffsets)
    {
      return 0;
    }

    MutableBytePtr = CFDataGetMutableBytePtr(result);
    v7 = CFDataGetMutableBytePtr(self->mCellOffsets);
    v8 = !MutableBytePtr || v7 == 0;
    if (v8 || *MutableBytePtr <= a3)
    {
      return 0;
    }

    else
    {
      return &MutableBytePtr[24 * a3 + 24];
    }
  }

  return result;
}

- (unsigned)indexOfRowInfoWithRowNumber:(unsigned int)a3
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    if (!self->mCellOffsets || ((MutableBytePtr = CFDataGetMutableBytePtr(mPackedData), v7 = CFDataGetMutableBytePtr(self->mCellOffsets), MutableBytePtr) ? (v8 = v7 == 0) : (v8 = 1), v8))
    {
      LODWORD(mPackedData) = 0;
    }

    else
    {
      v11 = *MutableBytePtr;
      v10 = MutableBytePtr + 24;
      v9 = v11;
      while (1)
      {
        if (!v9)
        {
LABEL_12:
          LODWORD(mPackedData) = -1;
          return mPackedData;
        }

        v12 = *&v10[24 * (v9 - 1) + 4];
        if (v12 == a3)
        {
          break;
        }

        --v9;
        if (v12 < a3)
        {
          goto LABEL_12;
        }
      }

      LODWORD(mPackedData) = v9 - 1;
    }
  }

  return mPackedData;
}

- (EDRowInfo)rowInfoWithRowNumber:(unsigned int)a3 createIfNil:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = [(EDRowBlock *)self indexOfRowInfoWithRowNumber:?];
  if (v7 == -1)
  {
    if (v4)
    {

      return [(EDRowBlock *)self addRowInfoWithRowNumber:v5 cellCountHint:0];
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return [(EDRowBlock *)self rowInfoAtIndex:v7];
  }
}

- (EDCellHeader)cellAtIndex:(unsigned int)a3 rowInfo:(EDRowInfo *)a4
{
  if (!a4)
  {
    return 0;
  }

  if (a4->var2 <= a3)
  {
    return 0;
  }

  result = self->mPackedData;
  if (!result)
  {
    return result;
  }

  if (!self->mCellOffsets)
  {
    return 0;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(result);
  v9 = CFDataGetMutableBytePtr(self->mCellOffsets);
  result = 0;
  if (MutableBytePtr)
  {
    if (v9)
    {
      return &MutableBytePtr[a4->var3 + *&v9[4 * a3 + a4->var4]];
    }
  }

  return result;
}

- (unsigned)expectedIndexOfCellWithColumnNumber:(unsigned int)a3 rowInfo:(EDRowInfo *)a4
{
  if (!a4)
  {
    return -1;
  }

  mPackedData = self->mPackedData;
  if (!mPackedData || !self->mCellOffsets)
  {
    return -1;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
  v9 = CFDataGetMutableBytePtr(self->mCellOffsets);
  v10 = -1;
  if (MutableBytePtr)
  {
    v11 = v9;
    if (v9)
    {
      v12 = a4->var2 - 1;
      if (v12 < 0)
      {
        return 0;
      }

      else
      {
        for (i = 0; i <= v12; v14 > a3 ? (v12 = v10 - 1) : (i = v10 + 1))
        {
          v10 = (v12 + i) >> 1;
          v14 = columnNumberForEDCell(&MutableBytePtr[a4->var3 + *&v11[4 * v10 + a4->var4]]);
          if (v14 == a3)
          {
            break;
          }
        }
      }
    }
  }

  return v10;
}

- (unsigned)indexOfCellWithColumnNumber:(unsigned int)a3 rowInfo:(EDRowInfo *)a4
{
  v7 = [EDRowBlock expectedIndexOfCellWithColumnNumber:"expectedIndexOfCellWithColumnNumber:rowInfo:" rowInfo:?];
  v8 = [(EDRowBlock *)self cellAtIndex:v7 rowInfo:a4];
  if (!v8 || columnNumberForEDCell(v8) != a3)
  {
    LODWORD(v7) = -1;
  }

  return v7;
}

- (EDCellHeader)cellWithColumnNumber:(unsigned int)a3 rowInfo:(EDRowInfo *)a4
{
  v6 = [(EDRowBlock *)self indexOfCellWithColumnNumber:*&a3 rowInfo:?];
  if (v6 == -1)
  {
    return 0;
  }

  return [(EDRowBlock *)self cellAtIndex:v6 rowInfo:a4];
}

- (EDRowInfo)addRowInfoWithRowNumber:(unsigned int)a3 cellCountHint:(unsigned int)a4
{
  if ([(EDRowBlock *)self firstRowNumber]!= -1 && [(EDRowBlock *)self firstRowNumber]+ 32 <= a3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[EDRowBlock addRowInfoWithRowNumber:cellCountHint:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/DOM/EDRowBlock.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:277 isFatal:0 description:"Trying to add too many rows to the end of a row block!"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if ([(EDRowBlock *)self firstRowNumber]!= -1 && a3 + 32 <= [(EDRowBlock *)self lastRowNumber])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[EDRowBlock addRowInfoWithRowNumber:cellCountHint:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/DOM/EDRowBlock.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:278 isFatal:0 description:"Trying to add too many rows to the start of a row block!"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (a4)
  {
    mPackedData = self->mPackedData;
    if (mPackedData)
    {
      if (self->mCellOffsets)
      {
        CFDataIncreaseLength(mPackedData, 8 * a4 + 24);
        CFDataIncreaseLength(self->mCellOffsets, 4 * a4);
      }
    }
  }

  v12 = self->mPackedData;
  if (!v12 || !self->mCellOffsets)
  {
    return 0;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(v12);
  v14 = CFDataGetMutableBytePtr(self->mCellOffsets);
  v15 = 0;
  if (!MutableBytePtr)
  {
    return v15;
  }

  v16 = v14;
  if (!v14)
  {
    return v15;
  }

  v17 = &MutableBytePtr[CFDataGetLength(self->mPackedData)];
  v18 = *MutableBytePtr;
  v19 = v18 + 1;
  v20 = 24 * v18;
  do
  {
    if (!v20)
    {
      v19 = 0;
      goto LABEL_29;
    }

    v21 = *&MutableBytePtr[v20 + 4];
    v22 = v21 == a3;
    if (v21 >= a3)
    {
      v23 = 0;
    }

    else
    {
      v23 = 6;
    }

    if (v22)
    {
      v23 = 1;
    }

    if (v22)
    {
      v15 = &MutableBytePtr[v20];
    }

    --v19;
    v20 -= 24;
  }

  while (!v23);
  if (v23 != 6)
  {
    return v15;
  }

LABEL_29:
  v24 = *(MutableBytePtr + 4) + 24;
  if (v24 > CFDataGetLength(self->mPackedData))
  {
    CFDataIncreaseLength(self->mPackedData, 24);
    v25 = CFDataGetMutableBytePtr(self->mPackedData);
    if (v25)
    {
      MutableBytePtr = v25;
      v17 = &v25[CFDataGetLength(self->mPackedData)];
      goto LABEL_32;
    }

    return 0;
  }

LABEL_32:
  v26 = MutableBytePtr + 24;
  v27 = v19;
  v28 = 24 * v19 + 24;
  v29 = *(MutableBytePtr + 4);
  if (v29 > v28)
  {
    memmove(&v26[24 * v19 + 24], &v26[24 * v19], v29 - v28);
    v29 = *(MutableBytePtr + 4);
  }

  *(MutableBytePtr + 4) = v29 + 24;
  v30 = __CFADD__(*MutableBytePtr, 1);
  v31 = (*MutableBytePtr + 1);
  *MutableBytePtr = v31;
  if (!v30)
  {
    v32 = MutableBytePtr + 36;
    v33 = v31;
    do
    {
      *v32 += 24;
      v32 += 6;
      --v33;
    }

    while (v33);
  }

  v34 = &MutableBytePtr[24 * v19 + 24];
  v35 = v19 + 1;
  do
  {
    if (!--v35)
    {
      goto LABEL_46;
    }

    v36 = v34 - 24;
    v37 = *(v34 - 16);
    v34 -= 24;
  }

  while (!v37);
  if (!v36)
  {
LABEL_46:
    v41 = 0;
    v40 = 24 * v31 + 24;
    goto LABEL_47;
  }

  v38 = *&v16[4 * (v37 - 1) + *(v36 + 16)];
  v39 = &MutableBytePtr[*(v36 + 12) + v38];
  if (&v39[1] > v17)
  {
    [TCMessageException raise:TCUnknownProblemMessage];
  }

  v40 = sizeofEDCell(v39) + v38 + *(v36 + 12);
  v41 = *(v36 + 16) + 4 * v37;
LABEL_47:
  v15 = &v26[24 * v27];
  initEDRowInfo(v15, a3);
  v15->var3 = v40;
  v15->var4 = v41;
  return v15;
}

- (EDCellHeader)addCellWithColumnNumber:(unsigned int)a3 type:(int)a4 isFormulaCell:(BOOL)a5 rowInfo:(EDRowInfo *)a6 rowBlocks:(id)a7
{
  v8 = a5;
  v10 = *&a3;
  v12 = a7;
  if (!*a6)
  {
    goto LABEL_24;
  }

  if (maximumAllowedColumnNumber() < v10)
  {
    goto LABEL_24;
  }

  mPackedData = self->mPackedData;
  if (!mPackedData || !self->mCellOffsets)
  {
    goto LABEL_24;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
  v15 = CFDataGetMutableBytePtr(self->mCellOffsets);
  v16 = 0;
  if (!MutableBytePtr)
  {
    goto LABEL_25;
  }

  v17 = v15;
  if (!v15)
  {
    goto LABEL_25;
  }

  Length = CFDataGetLength(self->mPackedData);
  var4 = (*a6)->var4;
  if (CFDataGetLength(self->mCellOffsets) < var4)
  {
LABEL_23:
    [TCMessageException raise:TCUnknownProblemMessage];
    goto LABEL_24;
  }

  v55 = Length;
  var2 = (*a6)->var2;
  if (var2)
  {
    v21 = var2 - 1;
    while (1)
    {
      v22 = columnNumberForEDCell((MutableBytePtr + (*a6)->var3 + *&v17[4 * v21 + (*a6)->var4]));
      if (v22 == v10)
      {
        break;
      }

      if (v22 < v10)
      {
        goto LABEL_15;
      }

      LODWORD(var2) = var2 - 1;
      if (!v21--)
      {
        LODWORD(var2) = 0;
        goto LABEL_15;
      }
    }

    var2 = (var2 - 1);
    [(EDRowBlock *)self removeCellAtIndex:var2 rowInfo:a6];
  }

LABEL_15:
  v58 = v17;
  v59 = sizeofEDCellType(a4, v8);
  v24 = MutableBytePtr[4];
  v25 = (*a6 - MutableBytePtr - 24) / 0x18uLL;
  if (v24 + v59 <= CFDataGetLength(self->mPackedData))
  {
    v26 = v59;
    v54 = v25;
    v56 = (MutableBytePtr + v55);
  }

  else
  {
    CFDataIncreaseLength(self->mPackedData, 32);
    MutableBytePtr = CFDataGetMutableBytePtr(self->mPackedData);
    if (!MutableBytePtr)
    {
      goto LABEL_24;
    }

    v54 = v25;
    v56 = (MutableBytePtr + CFDataGetLength(self->mPackedData));
    *a6 = &MutableBytePtr[6 * v25 + 6];
    v26 = v59;
  }

  v27 = CFDataGetLength(self->mCellOffsets);
  if (MutableBytePtr[5] + 4 > v27)
  {
    CFDataIncreaseLength(self->mCellOffsets, 16);
    v28 = CFDataGetMutableBytePtr(self->mCellOffsets);
    if (v28)
    {
      v27 = CFDataGetLength(self->mCellOffsets);
      v58 = v28;
      goto LABEL_22;
    }

LABEL_24:
    v16 = 0;
    goto LABEL_25;
  }

LABEL_22:
  v60 = v27;
  v29 = (*a6)->var4;
  if (v27 < v29)
  {
    goto LABEL_23;
  }

  var3 = (*a6)->var3;
  if (var2)
  {
    v32 = *&v58[4 * (var2 - 1) + v29];
    v52 = (*a6)->var3;
    v33 = MutableBytePtr + var3;
    v34 = v32;
    v35 = &v33[v32];
    if (&v33[v32 + 8] > v56)
    {
      v51 = &v33[v32];
      [TCMessageException raise:TCUnknownProblemMessage];
      v35 = v51;
    }

    v36 = sizeofEDCell(v35);
    v37 = v34 + v52;
    v53 = v36;
    LODWORD(var3) = v37 + v36;
  }

  else
  {
    v53 = 0;
  }

  if ([(EDRowBlock *)self startOfCellsOrThrow]> var3 || var3 > MutableBytePtr[4])
  {
    [TCMessageException raise:TCUnknownProblemMessage];
  }

  updateRowInfoOffsetsInPackedDataForNewCell(MutableBytePtr, v56, v54, v26, 4);
  v38 = MutableBytePtr[4];
  if (var3 < v38)
  {
    memmove(MutableBytePtr + var3 + v26, MutableBytePtr + var3, v38 - var3);
  }

  v39 = *a6;
  v40 = (*a6)->var4;
  v41 = (*a6)->var4;
  if (v60 <= v40)
  {
    v42 = (*a6)->var4;
    [TCMessageException raise:TCUnknownProblemMessage];
    v39 = *a6;
    v41 = (*a6)->var4;
    LODWORD(v40) = v42;
  }

  v43 = (var2 + 1);
  v57 = v60 - v41;
  if (v43 >= v60 - v41)
  {
    v61 = v40;
    [TCMessageException raise:TCUnknownProblemMessage];
    v39 = *a6;
    v41 = (*a6)->var4;
    LODWORD(v40) = v61;
  }

  v62 = var2;
  v44 = v40 + 4 * var2;
  v45 = &v58[v41];
  v46 = MutableBytePtr[5];
  if (v46 > v44)
  {
    memmove(&v45[4 * v43], &v45[4 * var2], v46 - v44);
    v39 = *a6;
    v46 = MutableBytePtr[5];
  }

  var1 = v39->var1;
  ++v39->var2;
  MutableBytePtr[4] += v26;
  MutableBytePtr[5] = v46 + 4;
  [v12 updateMaxPopulatedRow:var1 column:v10];
  if (var2)
  {
    v48 = *&v45[4 * (var2 - 1)] + v53;
  }

  else
  {
    v48 = 0;
  }

  *&v45[4 * var2] = v48;
  v49 = *a6;
  v50 = (*a6)->var2;
  if (v50 >= v57)
  {
    [TCMessageException raise:TCUnknownProblemMessage];
    v49 = *a6;
    v50 = (*a6)->var2;
  }

  if (v43 < v50)
  {
    do
    {
      *&v45[4 * v43++] += v26;
    }

    while (v43 < v49->var2);
  }

  v16 = (MutableBytePtr + v49->var3 + *&v45[4 * var2]);
  initEDCell((MutableBytePtr + v49->var3 + *&v45[4 * v62]), v10, a4, v8);
LABEL_25:

  return v16;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDRowBlock;
  v2 = [(EDRowBlock *)&v4 description];

  return v2;
}

- (void)removeCellAtIndex:(unsigned int)a3 rowInfo:(EDRowInfo *)a4
{
  mPackedData = self->mPackedData;
  if (mPackedData && self->mCellOffsets)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
    v9 = CFDataGetMutableBytePtr(self->mCellOffsets);
    if (MutableBytePtr && v9 != 0)
    {
      v11 = v9;
      v12 = (MutableBytePtr + CFDataGetLength(self->mPackedData));
      v13 = *&v11[4 * a3 + (*a4)->var4];
      v14 = (MutableBytePtr + (*a4)->var3 + v13);
      if (&v14[1] > v12)
      {
        [TCMessageException raise:TCUnknownProblemMessage];
      }

      v15 = a3;
      v16 = sizeofEDCell(v14);
      updateRowInfoOffsetsInPackedDataForNewCell(MutableBytePtr, v12, (*a4 - MutableBytePtr - 24) / 0x18uLL, -v16, -4);
      v17 = ((*a4)->var3 + v13);
      [(EDRowBlock *)self checkCellOffsetOrThrow:v17];
      v18 = MutableBytePtr[4];
      if (v18 > v17 + v16)
      {
        memmove(MutableBytePtr + v17, MutableBytePtr + v17 + v16, v18 - (v17 + v16));
      }

      v19 = *a4;
      var2 = (*a4)->var2 - 1;
      v19->var2 = var2;
      var4 = v19->var4;
      v22 = var4 + 4 * a3;
      v23 = &v11[var4];
      v24 = MutableBytePtr[5];
      if (v22 + 4 < v24)
      {
        memmove(&v23[4 * a3], &v23[4 * a3 + 4], (v24 - v22) - 4);
        v19 = *a4;
        var2 = (*a4)->var2;
      }

      if (var2 > a3)
      {
        do
        {
          *&v23[4 * v15++] -= v16;
        }

        while (v15 < v19->var2);
      }

      v25 = MutableBytePtr[5] - 4;
      MutableBytePtr[4] -= v16;
      MutableBytePtr[5] = v25;
    }
  }
}

- (void)checkCellOffsetOrThrow:(unint64_t)a3
{
  mPackedData = self->mPackedData;
  if (mPackedData && self->mCellOffsets)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
    v7 = CFDataGetMutableBytePtr(self->mCellOffsets);
    if (MutableBytePtr && v7 != 0)
    {
      if (CFDataGetLength(self->mPackedData) <= 0x17)
      {
        [TCMessageException raise:TCUnknownProblemMessage];
      }

      if ([(EDRowBlock *)self startOfCellsOrThrow]> a3 || (v9 = *(MutableBytePtr + 4), v9 <= a3))
      {
        [TCMessageException raise:TCUnknownProblemMessage];
        v9 = *(MutableBytePtr + 4);
      }

      if (v9 - 8 <= a3)
      {
        v10 = TCUnknownProblemMessage;

        [TCMessageException raise:v10];
      }
    }
  }
}

- (void)unarchiveFromData:(__CFData *)a3 offset:(unint64_t *)a4
{
  if (a3)
  {
    BytePtr = CFDataGetBytePtr(a3);
    if (BytePtr)
    {
      v8 = BytePtr;
      CFDataSetLength(self->mPackedData, 0);
      CFDataSetLength(self->mCellOffsets, 0);
      v9 = &v8[*a4];
      v10 = *a4 + *(v9 + 4) + *(v9 + 5);
      if (v10 <= CFDataGetLength(a3))
      {
        CFDataAppendBytes(self->mPackedData, v9, *(v9 + 4));
        v13 = *(v9 + 4);
        v12 = *(v9 + 5);
        *a4 += v13;
        CFDataAppendBytes(self->mCellOffsets, &v9[v13], v12);
        v11 = *(v9 + 5);
      }

      else
      {
        v11 = *(v9 + 5) + *(v9 + 4);
      }

      *a4 += v11;
    }
  }
}

- (void)archiveByAppendingToMutableData:(__CFData *)a3
{
  mPackedData = self->mPackedData;
  if (mPackedData && self->mCellOffsets)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
    v7 = CFDataGetMutableBytePtr(self->mCellOffsets);
    if (MutableBytePtr)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = v7;
      CFDataAppendBytes(a3, MutableBytePtr, *(MutableBytePtr + 4));
      v10 = *(MutableBytePtr + 5);

      CFDataAppendBytes(a3, v9, v10);
    }
  }
}

- (void)setIndex:(unint64_t)a3
{
  mPackedData = self->mPackedData;
  if (mPackedData && self->mCellOffsets)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
    v7 = CFDataGetMutableBytePtr(self->mCellOffsets);
    if (MutableBytePtr)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      *(MutableBytePtr + 1) = a3;
    }
  }
}

- (void)incrementIndex
{
  mPackedData = self->mPackedData;
  if (mPackedData && self->mCellOffsets)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
    v5 = CFDataGetMutableBytePtr(self->mCellOffsets);
    if (MutableBytePtr)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      ++*(MutableBytePtr + 1);
    }
  }
}

@end