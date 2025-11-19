@interface _CPEndLocalSearchFeedback
- (BOOL)isEqual:(id)a3;
- (_CPEndLocalSearchFeedback)init;
- (_CPEndLocalSearchFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPEndLocalSearchFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(NSString *)self->_uuid hash];
  v5 = v4 ^ [(_CPQueryUnderstandingParse *)self->_quParse hash]^ (2654435761 * self->_l1ToL2ResultCount) ^ v3;
  v6 = 2654435761 * self->_coreSpotlightIndexCount;
  v7 = v6 ^ [(_CPPhotosRankingInfo *)self->_photosRankingInfo hash];
  return v5 ^ v7 ^ [(_CPEmbeddingState *)self->_embeddingState hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_25;
  }

  v6 = [(_CPEndLocalSearchFeedback *)self uuid];
  v7 = [v4 uuid];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_24;
  }

  v8 = [(_CPEndLocalSearchFeedback *)self uuid];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPEndLocalSearchFeedback *)self uuid];
    v11 = [v4 uuid];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v6 = [(_CPEndLocalSearchFeedback *)self quParse];
  v7 = [v4 quParse];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_24;
  }

  v13 = [(_CPEndLocalSearchFeedback *)self quParse];
  if (v13)
  {
    v14 = v13;
    v15 = [(_CPEndLocalSearchFeedback *)self quParse];
    v16 = [v4 quParse];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  l1ToL2ResultCount = self->_l1ToL2ResultCount;
  if (l1ToL2ResultCount != [v4 l1ToL2ResultCount])
  {
    goto LABEL_25;
  }

  coreSpotlightIndexCount = self->_coreSpotlightIndexCount;
  if (coreSpotlightIndexCount != [v4 coreSpotlightIndexCount])
  {
    goto LABEL_25;
  }

  v6 = [(_CPEndLocalSearchFeedback *)self photosRankingInfo];
  v7 = [v4 photosRankingInfo];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_24;
  }

  v20 = [(_CPEndLocalSearchFeedback *)self photosRankingInfo];
  if (v20)
  {
    v21 = v20;
    v22 = [(_CPEndLocalSearchFeedback *)self photosRankingInfo];
    v23 = [v4 photosRankingInfo];
    v24 = [v22 isEqual:v23];

    if (!v24)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v6 = [(_CPEndLocalSearchFeedback *)self embeddingState];
  v7 = [v4 embeddingState];
  if ((v6 != 0) != (v7 == 0))
  {
    v25 = [(_CPEndLocalSearchFeedback *)self embeddingState];
    if (!v25)
    {

LABEL_28:
      v30 = 1;
      goto LABEL_26;
    }

    v26 = v25;
    v27 = [(_CPEndLocalSearchFeedback *)self embeddingState];
    v28 = [v4 embeddingState];
    v29 = [v27 isEqual:v28];

    if (v29)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_24:
  }

LABEL_25:
  v30 = 0;
LABEL_26:

  return v30;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  if ([(_CPEndLocalSearchFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPEndLocalSearchFeedback *)self uuid];

  if (v5)
  {
    uuid = self->_uuid;
    PBDataWriterWriteStringField();
  }

  v7 = [(_CPEndLocalSearchFeedback *)self quParse];

  if (v7)
  {
    v8 = [(_CPEndLocalSearchFeedback *)self quParse];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPEndLocalSearchFeedback *)self l1ToL2ResultCount])
  {
    l1ToL2ResultCount = self->_l1ToL2ResultCount;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPEndLocalSearchFeedback *)self coreSpotlightIndexCount])
  {
    coreSpotlightIndexCount = self->_coreSpotlightIndexCount;
    PBDataWriterWriteUint32Field();
  }

  v11 = [(_CPEndLocalSearchFeedback *)self photosRankingInfo];

  if (v11)
  {
    v12 = [(_CPEndLocalSearchFeedback *)self photosRankingInfo];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_CPEndLocalSearchFeedback *)self embeddingState];

  v14 = v16;
  if (v13)
  {
    v15 = [(_CPEndLocalSearchFeedback *)self embeddingState];
    PBDataWriterWriteSubmessage();

    v14 = v16;
  }
}

- (_CPEndLocalSearchFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPEndLocalSearchFeedback;
  v2 = [(_CPEndLocalSearchFeedback *)&v5 init];
  if (v2)
  {
    [(_CPEndLocalSearchFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPEndLocalSearchFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _CPEndLocalSearchFeedback;
  v5 = [(_CPEndLocalSearchFeedback *)&v22 init];
  if (v5)
  {
    -[_CPEndLocalSearchFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 uuid];

    if (v6)
    {
      v7 = [v4 uuid];
      [(_CPEndLocalSearchFeedback *)v5 setUuid:v7];
    }

    v8 = [v4 quParse];

    if (v8)
    {
      v9 = [_CPQueryUnderstandingParse alloc];
      v10 = [v4 quParse];
      v11 = [(_CPQueryUnderstandingParse *)v9 initWithFacade:v10];
      [(_CPEndLocalSearchFeedback *)v5 setQuParse:v11];
    }

    -[_CPEndLocalSearchFeedback setL1ToL2ResultCount:](v5, "setL1ToL2ResultCount:", [v4 l1ToL2ResultCount]);
    -[_CPEndLocalSearchFeedback setCoreSpotlightIndexCount:](v5, "setCoreSpotlightIndexCount:", [v4 coreSpotlightIndexCount]);
    v12 = [v4 photosRankingInfo];

    if (v12)
    {
      v13 = [_CPPhotosRankingInfo alloc];
      v14 = [v4 photosRankingInfo];
      v15 = [(_CPPhotosRankingInfo *)v13 initWithFacade:v14];
      [(_CPEndLocalSearchFeedback *)v5 setPhotosRankingInfo:v15];
    }

    v16 = [v4 embeddingState];

    if (v16)
    {
      v17 = [_CPEmbeddingState alloc];
      v18 = [v4 embeddingState];
      v19 = [(_CPEmbeddingState *)v17 initWithFacade:v18];
      [(_CPEndLocalSearchFeedback *)v5 setEmbeddingState:v19];
    }

    v20 = v5;
  }

  return v5;
}

@end