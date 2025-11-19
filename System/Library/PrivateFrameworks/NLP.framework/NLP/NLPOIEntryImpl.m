@interface NLPOIEntryImpl
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLPOIEntryImpl

- (void)dealloc
{
  [(NLPOIEntryImpl *)self setName:0];
  [(NLPOIEntryImpl *)self setDomain:0];
  [(NLPOIEntryImpl *)self setCategory:0];
  v3.receiver = self;
  v3.super_class = NLPOIEntryImpl;
  [(NLPOIEntryImpl *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = NLPOIEntryImpl;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", -[NLPOIEntryImpl description](&v3, sel_description), -[NLPOIEntryImpl dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  domain = self->_domain;
  if (domain)
  {
    [v5 setObject:domain forKey:@"domain"];
  }

  category = self->_category;
  if (category)
  {
    [v5 setObject:category forKey:@"category"];
  }

  if (*&self->_has)
  {
    *&v4 = self->_score;
    [v5 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithFloat:", v4), @"score"}];
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    v3.n128_u32[0] = LODWORD(self->_score);

    MEMORY[0x2821A42D0](a3, 4, v3);
  }
}

- (void)copyTo:(id)a3
{
  if (self->_name)
  {
    [a3 setName:?];
  }

  if (self->_domain)
  {
    [a3 setDomain:?];
  }

  if (self->_category)
  {
    [a3 setCategory:?];
  }

  if (*&self->_has)
  {
    *(a3 + 8) = LODWORD(self->_score);
    *(a3 + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 24) = [(NSString *)self->_name copyWithZone:a3];
  *(v5 + 16) = [(NSString *)self->_domain copyWithZone:a3];

  *(v5 + 8) = [(NSString *)self->_category copyWithZone:a3];
  if (*&self->_has)
  {
    *(v5 + 32) = self->_score;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    name = self->_name;
    if (!(name | *(a3 + 3)) || (v5 = [(NSString *)name isEqual:?]) != 0)
    {
      domain = self->_domain;
      if (!(domain | *(a3 + 2)) || (v5 = [(NSString *)domain isEqual:?]) != 0)
      {
        category = self->_category;
        if (!(category | *(a3 + 1)) || (v5 = [(NSString *)category isEqual:?]) != 0)
        {
          LOBYTE(v5) = (*(a3 + 36) & 1) == 0;
          if (*&self->_has)
          {
            LOBYTE(v5) = (*(a3 + 36) & 1) != 0 && self->_score == *(a3 + 8);
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_domain hash];
  v5 = [(NSString *)self->_category hash];
  if (*&self->_has)
  {
    score = self->_score;
    if (score >= 0.0)
    {
      v10 = score;
    }

    else
    {
      v10 = -score;
    }

    *v6.i64 = floor(v10 + 0.5);
    v11 = (v10 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v7, v6).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v8 += v11;
      }
    }

    else
    {
      v8 -= fabs(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 3))
  {
    [(NLPOIEntryImpl *)self setName:?];
  }

  if (*(a3 + 2))
  {
    [(NLPOIEntryImpl *)self setDomain:?];
  }

  if (*(a3 + 1))
  {
    [(NLPOIEntryImpl *)self setCategory:?];
  }

  if (*(a3 + 36))
  {
    self->_score = *(a3 + 8);
    *&self->_has |= 1u;
  }
}

@end