@interface HWPDrawing
- (BOOL)isEqual:(id)a3;
- (id)compressionAlgorithmAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCompressionAlgorithm:(id)a3;
- (int)compressionAlgorithm;
- (unint64_t)hash;
- (unsigned)strokeDataFieldCount;
- (unsigned)version;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDecompressedLength:(BOOL)a3;
- (void)setHasStrokeDataFieldCount:(BOOL)a3;
- (void)setHasStrokesCount:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HWPDrawing

- (unsigned)version
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_version;
  }

  else
  {
    return 1;
  }
}

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasStrokesCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)compressionAlgorithm
{
  if (*&self->_has)
  {
    return self->_compressionAlgorithm;
  }

  else
  {
    return 1;
  }
}

- (id)compressionAlgorithmAsString:(int)a3
{
  if (a3 >= 7)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_278FB7880[a3];
  }

  return v4;
}

- (int)StringAsCompressionAlgorithm:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LZ4"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ZLIB"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LZMA"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"LZ4_RAW"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"LZFSE"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDecompressedLength:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unsigned)strokeDataFieldCount
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_strokeDataFieldCount;
  }

  else
  {
    return 4;
  }
}

- (void)setHasStrokeDataFieldCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HWPDrawing;
  v4 = [(HWPDrawing *)&v8 description];
  v5 = [(HWPDrawing *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  encodedCanvasSize = self->_encodedCanvasSize;
  if (encodedCanvasSize)
  {
    [v3 setObject:encodedCanvasSize forKey:@"encodedCanvasSize"];
  }

  encodedStrokesFrame = self->_encodedStrokesFrame;
  if (encodedStrokesFrame)
  {
    [v3 setObject:encodedStrokesFrame forKey:@"encodedStrokesFrame"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_strokesCount];
    [v3 setObject:v13 forKey:@"strokesCount"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  compressionAlgorithm = self->_compressionAlgorithm;
  if (compressionAlgorithm >= 7)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_compressionAlgorithm];
  }

  else
  {
    v15 = off_278FB7880[compressionAlgorithm];
  }

  [v3 setObject:v15 forKey:@"compressionAlgorithm"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_24:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_decompressedLength];
  [v3 setObject:v16 forKey:@"decompressedLength"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_strokeDataFieldCount];
    [v3 setObject:v8 forKey:@"strokeDataFieldCount"];
  }

LABEL_12:
  strokes = self->_strokes;
  if (strokes)
  {
    [v3 setObject:strokes forKey:@"strokes"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v11 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"Unknown Fields"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_encodedCanvasSize)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_encodedStrokesFrame)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
    v4 = v6;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteInt32Field();
  v4 = v6;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  PBDataWriterWriteUint32Field();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

LABEL_12:
  if (self->_strokes)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 0x10) != 0)
  {
    v4[15] = self->_version;
    *(v4 + 64) |= 0x10u;
  }

  v6 = v4;
  if (self->_encodedCanvasSize)
  {
    [v4 setEncodedCanvasSize:?];
    v4 = v6;
  }

  if (self->_encodedStrokesFrame)
  {
    [v6 setEncodedStrokesFrame:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[14] = self->_strokesCount;
    *(v4 + 64) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  v4[4] = self->_compressionAlgorithm;
  *(v4 + 64) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  v4[5] = self->_decompressedLength;
  *(v4 + 64) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    v4[10] = self->_strokeDataFieldCount;
    *(v4 + 64) |= 4u;
  }

LABEL_12:
  if (self->_strokes)
  {
    [v6 setStrokes:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 60) = self->_version;
    *(v5 + 64) |= 0x10u;
  }

  v7 = [(NSData *)self->_encodedCanvasSize copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v9 = [(NSData *)self->_encodedStrokesFrame copyWithZone:a3];
  v10 = *(v6 + 32);
  *(v6 + 32) = v9;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 56) = self->_strokesCount;
    *(v6 + 64) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v6 + 20) = self->_decompressedLength;
      *(v6 + 64) |= 2u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 16) = self->_compressionAlgorithm;
  *(v6 + 64) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 4) != 0)
  {
LABEL_7:
    *(v6 + 40) = self->_strokeDataFieldCount;
    *(v6 + 64) |= 4u;
  }

LABEL_8:
  v12 = [(NSData *)self->_strokes copyWithZone:a3];
  v13 = *(v6 + 48);
  *(v6 + 48) = v12;

  objc_storeStrong((v6 + 8), self->_unknownFields);
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 64) & 0x10) == 0 || self->_version != *(v4 + 15))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 64) & 0x10) != 0)
  {
LABEL_33:
    v8 = 0;
    goto LABEL_34;
  }

  encodedCanvasSize = self->_encodedCanvasSize;
  if (encodedCanvasSize | *(v4 + 3) && ![(NSData *)encodedCanvasSize isEqual:?])
  {
    goto LABEL_33;
  }

  encodedStrokesFrame = self->_encodedStrokesFrame;
  if (encodedStrokesFrame | *(v4 + 4))
  {
    if (![(NSData *)encodedStrokesFrame isEqual:?])
    {
      goto LABEL_33;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 64) & 8) == 0 || self->_strokesCount != *(v4 + 14))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 64) & 8) != 0)
  {
    goto LABEL_33;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_compressionAlgorithm != *(v4 + 4))
    {
      goto LABEL_33;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_decompressedLength != *(v4 + 5))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 64) & 4) == 0 || self->_strokeDataFieldCount != *(v4 + 10))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 64) & 4) != 0)
  {
    goto LABEL_33;
  }

  strokes = self->_strokes;
  if (strokes | *(v4 + 6))
  {
    v8 = [(NSData *)strokes isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_34:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_encodedCanvasSize hash];
  v5 = [(NSData *)self->_encodedStrokesFrame hash];
  if ((*&self->_has & 8) != 0)
  {
    v6 = 2654435761 * self->_strokesCount;
    if (*&self->_has)
    {
LABEL_6:
      v7 = 2654435761 * self->_compressionAlgorithm;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v8 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v9 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(NSData *)self->_strokes hash];
    }
  }

  else
  {
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v8 = 2654435761 * self->_decompressedLength;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v9 = 2654435761 * self->_strokeDataFieldCount;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(NSData *)self->_strokes hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((v4[16] & 0x10) != 0)
  {
    self->_version = v4[15];
    *&self->_has |= 0x10u;
  }

  v6 = v4;
  if (*(v4 + 3))
  {
    [(HWPDrawing *)self setEncodedCanvasSize:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(HWPDrawing *)self setEncodedStrokesFrame:?];
    v4 = v6;
  }

  v5 = *(v4 + 64);
  if ((v5 & 8) != 0)
  {
    self->_strokesCount = v4[14];
    *&self->_has |= 8u;
    v5 = *(v4 + 64);
    if ((v5 & 1) == 0)
    {
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((v4[16] & 1) == 0)
  {
    goto LABEL_9;
  }

  self->_compressionAlgorithm = v4[4];
  *&self->_has |= 1u;
  v5 = *(v4 + 64);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  self->_decompressedLength = v4[5];
  *&self->_has |= 2u;
  if ((v4[16] & 4) != 0)
  {
LABEL_11:
    self->_strokeDataFieldCount = v4[10];
    *&self->_has |= 4u;
  }

LABEL_12:
  if (*(v4 + 6))
  {
    [(HWPDrawing *)self setStrokes:?];
    v4 = v6;
  }
}

@end