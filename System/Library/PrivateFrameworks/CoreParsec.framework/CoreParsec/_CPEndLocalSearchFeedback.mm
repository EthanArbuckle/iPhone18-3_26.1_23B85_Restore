@interface _CPEndLocalSearchFeedback
- (BOOL)isEqual:(id)equal;
- (_CPEndLocalSearchFeedback)init;
- (_CPEndLocalSearchFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_25;
  }

  uuid = [(_CPEndLocalSearchFeedback *)self uuid];
  uuid2 = [equalCopy uuid];
  if ((uuid != 0) == (uuid2 == 0))
  {
    goto LABEL_24;
  }

  uuid3 = [(_CPEndLocalSearchFeedback *)self uuid];
  if (uuid3)
  {
    v9 = uuid3;
    uuid4 = [(_CPEndLocalSearchFeedback *)self uuid];
    uuid5 = [equalCopy uuid];
    v12 = [uuid4 isEqual:uuid5];

    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  uuid = [(_CPEndLocalSearchFeedback *)self quParse];
  uuid2 = [equalCopy quParse];
  if ((uuid != 0) == (uuid2 == 0))
  {
    goto LABEL_24;
  }

  quParse = [(_CPEndLocalSearchFeedback *)self quParse];
  if (quParse)
  {
    v14 = quParse;
    quParse2 = [(_CPEndLocalSearchFeedback *)self quParse];
    quParse3 = [equalCopy quParse];
    v17 = [quParse2 isEqual:quParse3];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  l1ToL2ResultCount = self->_l1ToL2ResultCount;
  if (l1ToL2ResultCount != [equalCopy l1ToL2ResultCount])
  {
    goto LABEL_25;
  }

  coreSpotlightIndexCount = self->_coreSpotlightIndexCount;
  if (coreSpotlightIndexCount != [equalCopy coreSpotlightIndexCount])
  {
    goto LABEL_25;
  }

  uuid = [(_CPEndLocalSearchFeedback *)self photosRankingInfo];
  uuid2 = [equalCopy photosRankingInfo];
  if ((uuid != 0) == (uuid2 == 0))
  {
    goto LABEL_24;
  }

  photosRankingInfo = [(_CPEndLocalSearchFeedback *)self photosRankingInfo];
  if (photosRankingInfo)
  {
    v21 = photosRankingInfo;
    photosRankingInfo2 = [(_CPEndLocalSearchFeedback *)self photosRankingInfo];
    photosRankingInfo3 = [equalCopy photosRankingInfo];
    v24 = [photosRankingInfo2 isEqual:photosRankingInfo3];

    if (!v24)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  uuid = [(_CPEndLocalSearchFeedback *)self embeddingState];
  uuid2 = [equalCopy embeddingState];
  if ((uuid != 0) != (uuid2 == 0))
  {
    embeddingState = [(_CPEndLocalSearchFeedback *)self embeddingState];
    if (!embeddingState)
    {

LABEL_28:
      v30 = 1;
      goto LABEL_26;
    }

    v26 = embeddingState;
    embeddingState2 = [(_CPEndLocalSearchFeedback *)self embeddingState];
    embeddingState3 = [equalCopy embeddingState];
    v29 = [embeddingState2 isEqual:embeddingState3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPEndLocalSearchFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  uuid = [(_CPEndLocalSearchFeedback *)self uuid];

  if (uuid)
  {
    uuid = self->_uuid;
    PBDataWriterWriteStringField();
  }

  quParse = [(_CPEndLocalSearchFeedback *)self quParse];

  if (quParse)
  {
    quParse2 = [(_CPEndLocalSearchFeedback *)self quParse];
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

  photosRankingInfo = [(_CPEndLocalSearchFeedback *)self photosRankingInfo];

  if (photosRankingInfo)
  {
    photosRankingInfo2 = [(_CPEndLocalSearchFeedback *)self photosRankingInfo];
    PBDataWriterWriteSubmessage();
  }

  embeddingState = [(_CPEndLocalSearchFeedback *)self embeddingState];

  v14 = toCopy;
  if (embeddingState)
  {
    embeddingState2 = [(_CPEndLocalSearchFeedback *)self embeddingState];
    PBDataWriterWriteSubmessage();

    v14 = toCopy;
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

- (_CPEndLocalSearchFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v22.receiver = self;
  v22.super_class = _CPEndLocalSearchFeedback;
  v5 = [(_CPEndLocalSearchFeedback *)&v22 init];
  if (v5)
  {
    -[_CPEndLocalSearchFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    uuid = [facadeCopy uuid];

    if (uuid)
    {
      uuid2 = [facadeCopy uuid];
      [(_CPEndLocalSearchFeedback *)v5 setUuid:uuid2];
    }

    quParse = [facadeCopy quParse];

    if (quParse)
    {
      v9 = [_CPQueryUnderstandingParse alloc];
      quParse2 = [facadeCopy quParse];
      v11 = [(_CPQueryUnderstandingParse *)v9 initWithFacade:quParse2];
      [(_CPEndLocalSearchFeedback *)v5 setQuParse:v11];
    }

    -[_CPEndLocalSearchFeedback setL1ToL2ResultCount:](v5, "setL1ToL2ResultCount:", [facadeCopy l1ToL2ResultCount]);
    -[_CPEndLocalSearchFeedback setCoreSpotlightIndexCount:](v5, "setCoreSpotlightIndexCount:", [facadeCopy coreSpotlightIndexCount]);
    photosRankingInfo = [facadeCopy photosRankingInfo];

    if (photosRankingInfo)
    {
      v13 = [_CPPhotosRankingInfo alloc];
      photosRankingInfo2 = [facadeCopy photosRankingInfo];
      v15 = [(_CPPhotosRankingInfo *)v13 initWithFacade:photosRankingInfo2];
      [(_CPEndLocalSearchFeedback *)v5 setPhotosRankingInfo:v15];
    }

    embeddingState = [facadeCopy embeddingState];

    if (embeddingState)
    {
      v17 = [_CPEmbeddingState alloc];
      embeddingState2 = [facadeCopy embeddingState];
      v19 = [(_CPEmbeddingState *)v17 initWithFacade:embeddingState2];
      [(_CPEndLocalSearchFeedback *)v5 setEmbeddingState:v19];
    }

    v20 = v5;
  }

  return v5;
}

@end