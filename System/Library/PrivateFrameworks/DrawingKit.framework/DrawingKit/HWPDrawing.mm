@interface HWPDrawing
- (BOOL)isEqual:(id)equal;
- (id)compressionAlgorithmAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCompressionAlgorithm:(id)algorithm;
- (int)compressionAlgorithm;
- (unint64_t)hash;
- (unsigned)strokeDataFieldCount;
- (unsigned)version;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDecompressedLength:(BOOL)length;
- (void)setHasStrokeDataFieldCount:(BOOL)count;
- (void)setHasStrokesCount:(BOOL)count;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
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

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasStrokesCount:(BOOL)count
{
  if (count)
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

- (id)compressionAlgorithmAsString:(int)string
{
  if (string >= 7)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_278FB7880[string];
  }

  return v4;
}

- (int)StringAsCompressionAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  if ([algorithmCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([algorithmCopy isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([algorithmCopy isEqualToString:@"LZ4"])
  {
    v4 = 2;
  }

  else if ([algorithmCopy isEqualToString:@"ZLIB"])
  {
    v4 = 3;
  }

  else if ([algorithmCopy isEqualToString:@"LZMA"])
  {
    v4 = 4;
  }

  else if ([algorithmCopy isEqualToString:@"LZ4_RAW"])
  {
    v4 = 5;
  }

  else if ([algorithmCopy isEqualToString:@"LZFSE"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDecompressedLength:(BOOL)length
{
  if (length)
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

- (void)setHasStrokeDataFieldCount:(BOOL)count
{
  if (count)
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
  dictionaryRepresentation = [(HWPDrawing *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
    [dictionary setObject:v4 forKey:@"version"];
  }

  encodedCanvasSize = self->_encodedCanvasSize;
  if (encodedCanvasSize)
  {
    [dictionary setObject:encodedCanvasSize forKey:@"encodedCanvasSize"];
  }

  encodedStrokesFrame = self->_encodedStrokesFrame;
  if (encodedStrokesFrame)
  {
    [dictionary setObject:encodedStrokesFrame forKey:@"encodedStrokesFrame"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_strokesCount];
    [dictionary setObject:v13 forKey:@"strokesCount"];

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

  [dictionary setObject:v15 forKey:@"compressionAlgorithm"];

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
  [dictionary setObject:v16 forKey:@"decompressedLength"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_strokeDataFieldCount];
    [dictionary setObject:v8 forKey:@"strokeDataFieldCount"];
  }

LABEL_12:
  strokes = self->_strokes;
  if (strokes)
  {
    [dictionary setObject:strokes forKey:@"strokes"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"Unknown Fields"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_encodedCanvasSize)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_encodedStrokesFrame)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v6;
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
  toCopy = v6;
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
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

LABEL_12:
  if (self->_strokes)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x10) != 0)
  {
    toCopy[15] = self->_version;
    *(toCopy + 64) |= 0x10u;
  }

  v6 = toCopy;
  if (self->_encodedCanvasSize)
  {
    [toCopy setEncodedCanvasSize:?];
    toCopy = v6;
  }

  if (self->_encodedStrokesFrame)
  {
    [v6 setEncodedStrokesFrame:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[14] = self->_strokesCount;
    *(toCopy + 64) |= 8u;
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

  toCopy[4] = self->_compressionAlgorithm;
  *(toCopy + 64) |= 1u;
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
  toCopy[5] = self->_decompressedLength;
  *(toCopy + 64) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    toCopy[10] = self->_strokeDataFieldCount;
    *(toCopy + 64) |= 4u;
  }

LABEL_12:
  if (self->_strokes)
  {
    [v6 setStrokes:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 60) = self->_version;
    *(v5 + 64) |= 0x10u;
  }

  v7 = [(NSData *)self->_encodedCanvasSize copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v9 = [(NSData *)self->_encodedStrokesFrame copyWithZone:zone];
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
  v12 = [(NSData *)self->_strokes copyWithZone:zone];
  v13 = *(v6 + 48);
  *(v6 + 48) = v12;

  objc_storeStrong((v6 + 8), self->_unknownFields);
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 64) & 0x10) == 0 || self->_version != *(equalCopy + 15))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 64) & 0x10) != 0)
  {
LABEL_33:
    v8 = 0;
    goto LABEL_34;
  }

  encodedCanvasSize = self->_encodedCanvasSize;
  if (encodedCanvasSize | *(equalCopy + 3) && ![(NSData *)encodedCanvasSize isEqual:?])
  {
    goto LABEL_33;
  }

  encodedStrokesFrame = self->_encodedStrokesFrame;
  if (encodedStrokesFrame | *(equalCopy + 4))
  {
    if (![(NSData *)encodedStrokesFrame isEqual:?])
    {
      goto LABEL_33;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 64) & 8) == 0 || self->_strokesCount != *(equalCopy + 14))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 64) & 8) != 0)
  {
    goto LABEL_33;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_compressionAlgorithm != *(equalCopy + 4))
    {
      goto LABEL_33;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_decompressedLength != *(equalCopy + 5))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_strokeDataFieldCount != *(equalCopy + 10))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
    goto LABEL_33;
  }

  strokes = self->_strokes;
  if (strokes | *(equalCopy + 6))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[16] & 0x10) != 0)
  {
    self->_version = fromCopy[15];
    *&self->_has |= 0x10u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(HWPDrawing *)self setEncodedCanvasSize:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(HWPDrawing *)self setEncodedStrokesFrame:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 64);
  if ((v5 & 8) != 0)
  {
    self->_strokesCount = fromCopy[14];
    *&self->_has |= 8u;
    v5 = *(fromCopy + 64);
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

  else if ((fromCopy[16] & 1) == 0)
  {
    goto LABEL_9;
  }

  self->_compressionAlgorithm = fromCopy[4];
  *&self->_has |= 1u;
  v5 = *(fromCopy + 64);
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
  self->_decompressedLength = fromCopy[5];
  *&self->_has |= 2u;
  if ((fromCopy[16] & 4) != 0)
  {
LABEL_11:
    self->_strokeDataFieldCount = fromCopy[10];
    *&self->_has |= 4u;
  }

LABEL_12:
  if (*(fromCopy + 6))
  {
    [(HWPDrawing *)self setStrokes:?];
    fromCopy = v6;
  }
}

@end