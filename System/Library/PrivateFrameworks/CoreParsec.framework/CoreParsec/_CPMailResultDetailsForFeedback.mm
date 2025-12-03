@interface _CPMailResultDetailsForFeedback
- (BOOL)isEqual:(id)equal;
- (_CPMailResultDetailsForFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPMailResultDetailsForFeedback

- (unint64_t)hash
{
  suggestionScore = self->_suggestionScore;
  if (suggestionScore >= 0.0)
  {
    v5 = suggestionScore;
  }

  else
  {
    v5 = -suggestionScore;
  }

  *v2.i64 = round(v5);
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  return (2654435761 * self->_skgMegadomeSpotlightIndexEntries) ^ (2654435761 * self->_dataSources) ^ ((*vbslq_s8(vnegq_f64(v6), v3, v2).i64 * 2654435760.0) + vcvtd_n_u64_f64(v5 - *v2.i64, 0x40uLL));
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (dataSources = self->_dataSources, dataSources == objc_msgSend(equalCopy, "dataSources")) && (suggestionScore = self->_suggestionScore, objc_msgSend(equalCopy, "suggestionScore"), suggestionScore == v7))
  {
    skgMegadomeSpotlightIndexEntries = self->_skgMegadomeSpotlightIndexEntries;
    v8 = skgMegadomeSpotlightIndexEntries == [equalCopy skgMegadomeSpotlightIndexEntries];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPMailResultDetailsForFeedback *)self dataSources])
  {
    dataSources = self->_dataSources;
    PBDataWriterWriteInt32Field();
  }

  [(_CPMailResultDetailsForFeedback *)self suggestionScore];
  if (v5 != 0.0)
  {
    suggestionScore = self->_suggestionScore;
    PBDataWriterWriteFloatField();
  }

  if ([(_CPMailResultDetailsForFeedback *)self skgMegadomeSpotlightIndexEntries])
  {
    skgMegadomeSpotlightIndexEntries = self->_skgMegadomeSpotlightIndexEntries;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPMailResultDetailsForFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v12.receiver = self;
  v12.super_class = _CPMailResultDetailsForFeedback;
  v5 = [(_CPMailResultDetailsForFeedback *)&v12 init];
  if (v5)
  {
    -[_CPMailResultDetailsForFeedback setDataSources:](v5, "setDataSources:", [facadeCopy dataSources]);
    suggestionScore = [facadeCopy suggestionScore];

    if (suggestionScore)
    {
      suggestionScore2 = [facadeCopy suggestionScore];
      [suggestionScore2 floatValue];
      [(_CPMailResultDetailsForFeedback *)v5 setSuggestionScore:?];
    }

    skgMegadomeSpotlightIndexEntries = [facadeCopy skgMegadomeSpotlightIndexEntries];

    if (skgMegadomeSpotlightIndexEntries)
    {
      skgMegadomeSpotlightIndexEntries2 = [facadeCopy skgMegadomeSpotlightIndexEntries];
      -[_CPMailResultDetailsForFeedback setSkgMegadomeSpotlightIndexEntries:](v5, "setSkgMegadomeSpotlightIndexEntries:", [skgMegadomeSpotlightIndexEntries2 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

@end