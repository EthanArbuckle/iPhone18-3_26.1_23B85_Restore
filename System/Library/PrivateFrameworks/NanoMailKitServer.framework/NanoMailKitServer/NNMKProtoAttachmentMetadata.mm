@interface NNMKProtoAttachmentMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasImageHeight:(BOOL)a3;
- (void)setHasImageWidth:(BOOL)a3;
- (void)setHasRenderOnClient:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoAttachmentMetadata

- (void)setHasType:(BOOL)a3
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

- (void)setHasRenderOnClient:(BOOL)a3
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

- (void)setHasImageWidth:(BOOL)a3
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

- (void)setHasImageHeight:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoAttachmentMetadata;
  v4 = [(NNMKProtoAttachmentMetadata *)&v8 description];
  v5 = [(NNMKProtoAttachmentMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v3;
  contentId = self->_contentId;
  if (contentId)
  {
    [v3 setObject:contentId forKey:@"contentId"];
  }

  fileName = self->_fileName;
  if (fileName)
  {
    [v5 setObject:fileName forKey:@"fileName"];
  }

  has = self->_has;
  if (has)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_fileSize];
    [v5 setObject:v12 forKey:@"fileSize"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_type];
  [v5 setObject:v13 forKey:@"type"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_renderOnClient];
  [v5 setObject:v14 forKey:@"renderOnClient"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  *&v4 = self->_imageWidth;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v5 setObject:v15 forKey:@"imageWidth"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    *&v4 = self->_imageHeight;
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v5 setObject:v9 forKey:@"imageHeight"];
  }

LABEL_11:
  mimePartNumber = self->_mimePartNumber;
  if (mimePartNumber)
  {
    [v5 setObject:mimePartNumber forKey:@"mimePartNumber"];
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_contentId)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if (self->_fileName)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  has = self->_has;
  if (has)
  {
    fileSize = self->_fileSize;
    PBDataWriterWriteUint32Field();
    v4 = v11;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  type = self->_type;
  PBDataWriterWriteUint32Field();
  v4 = v11;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  renderOnClient = self->_renderOnClient;
  PBDataWriterWriteBOOLField();
  v4 = v11;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  imageWidth = self->_imageWidth;
  PBDataWriterWriteFloatField();
  v4 = v11;
  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    imageHeight = self->_imageHeight;
    PBDataWriterWriteFloatField();
    v4 = v11;
  }

LABEL_11:
  if (self->_mimePartNumber)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_contentId)
  {
    [v4 setContentId:?];
    v4 = v6;
  }

  if (self->_fileName)
  {
    [v6 setFileName:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 6) = self->_fileSize;
    *(v4 + 56) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 12) = self->_type;
  *(v4 + 56) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 52) = self->_renderOnClient;
  *(v4 + 56) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(v4 + 8) = LODWORD(self->_imageWidth);
  *(v4 + 56) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    *(v4 + 7) = LODWORD(self->_imageHeight);
    *(v4 + 56) |= 2u;
  }

LABEL_11:
  if (self->_mimePartNumber)
  {
    [v6 setMimePartNumber:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_contentId copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_fileName copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 24) = self->_fileSize;
    *(v5 + 56) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 48) = self->_type;
  *(v5 + 56) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v5 + 32) = self->_imageWidth;
    *(v5 + 56) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v5 + 52) = self->_renderOnClient;
  *(v5 + 56) |= 0x10u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    *(v5 + 28) = self->_imageHeight;
    *(v5 + 56) |= 2u;
  }

LABEL_7:
  v11 = [(NSString *)self->_mimePartNumber copyWithZone:a3];
  v12 = *(v5 + 40);
  *(v5 + 40) = v11;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  contentId = self->_contentId;
  if (contentId | *(v4 + 1))
  {
    if (![(NSString *)contentId isEqual:?])
    {
      goto LABEL_36;
    }
  }

  fileName = self->_fileName;
  if (fileName | *(v4 + 2))
  {
    if (![(NSString *)fileName isEqual:?])
    {
      goto LABEL_36;
    }
  }

  v7 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_fileSize != *(v4 + 6))
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 56) & 8) == 0 || self->_type != *(v4 + 12))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 56) & 8) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(v4 + 56) & 0x10) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    v10 = 0;
    goto LABEL_37;
  }

  if ((*(v4 + 56) & 0x10) == 0)
  {
    goto LABEL_36;
  }

  v8 = *(v4 + 52);
  if (self->_renderOnClient)
  {
    if ((*(v4 + 52) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_imageWidth != *(v4 + 8))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_imageHeight != *(v4 + 7))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_36;
  }

  mimePartNumber = self->_mimePartNumber;
  if (mimePartNumber | *(v4 + 5))
  {
    v10 = [(NSString *)mimePartNumber isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_37:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contentId hash];
  v4 = [(NSString *)self->_fileName hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_fileSize;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v8 = 2654435761 * self->_type;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v9 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v9 = 2654435761 * self->_renderOnClient;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  imageWidth = self->_imageWidth;
  if (imageWidth < 0.0)
  {
    imageWidth = -imageWidth;
  }

  *v5.i32 = floorf(imageWidth + 0.5);
  v11 = (imageWidth - *v5.i32) * 1.8447e19;
  *v6.i32 = *v5.i32 - (truncf(*v5.i32 * 5.421e-20) * 1.8447e19);
  v12.i64[0] = 0x8000000080000000;
  v12.i64[1] = 0x8000000080000000;
  v5 = vbslq_s8(v12, v6, v5);
  v13 = 2654435761u * *v5.i32;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabsf(v11);
  }

LABEL_13:
  if ((*&self->_has & 2) != 0)
  {
    imageHeight = self->_imageHeight;
    if (imageHeight < 0.0)
    {
      imageHeight = -imageHeight;
    }

    *v5.i32 = floorf(imageHeight + 0.5);
    v16 = (imageHeight - *v5.i32) * 1.8447e19;
    *v6.i32 = *v5.i32 - (truncf(*v5.i32 * 5.421e-20) * 1.8447e19);
    v17.i64[0] = 0x8000000080000000;
    v17.i64[1] = 0x8000000080000000;
    v14 = 2654435761u * *vbslq_s8(v17, v6, v5).i32;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabsf(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v8 ^ v9 ^ v13 ^ v14 ^ [(NSString *)self->_mimePartNumber hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 1))
  {
    [(NNMKProtoAttachmentMetadata *)self setContentId:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(NNMKProtoAttachmentMetadata *)self setFileName:?];
    v4 = v6;
  }

  v5 = *(v4 + 56);
  if (v5)
  {
    self->_fileSize = *(v4 + 6);
    *&self->_has |= 1u;
    v5 = *(v4 + 56);
    if ((v5 & 8) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*(v4 + 56) & 8) == 0)
  {
    goto LABEL_7;
  }

  self->_type = *(v4 + 12);
  *&self->_has |= 8u;
  v5 = *(v4 + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_renderOnClient = *(v4 + 52);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 56);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  self->_imageWidth = *(v4 + 8);
  *&self->_has |= 4u;
  if ((*(v4 + 56) & 2) != 0)
  {
LABEL_10:
    self->_imageHeight = *(v4 + 7);
    *&self->_has |= 2u;
  }

LABEL_11:
  if (*(v4 + 5))
  {
    [(NNMKProtoAttachmentMetadata *)self setMimePartNumber:?];
    v4 = v6;
  }
}

@end