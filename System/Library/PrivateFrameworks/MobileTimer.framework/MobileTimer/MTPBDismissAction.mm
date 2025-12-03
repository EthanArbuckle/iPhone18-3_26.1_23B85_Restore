@interface MTPBDismissAction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation MTPBDismissAction

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTPBDismissAction;
  v4 = [(MTPBDismissAction *)&v8 description];
  dictionaryRepresentation = [(MTPBDismissAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dismissDate];
  [dictionary setObject:v4 forKey:@"dismissDate"];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = *&self->_dismissDate;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_dismissDate == equalCopy[1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  dismissDate = self->_dismissDate;
  if (dismissDate < 0.0)
  {
    dismissDate = -dismissDate;
  }

  *v2.i64 = floor(dismissDate + 0.5);
  v5 = (dismissDate - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v2.i64[0] = vbslq_s8(vnegq_f64(v6), v3, v2).i64[0];
  v7 = 2654435761u * *v2.i64;
  v8 = v7 + v5;
  if (v5 <= 0.0)
  {
    v8 = 2654435761u * *v2.i64;
  }

  v9 = v7 - fabs(v5);
  if (v5 < 0.0)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

@end