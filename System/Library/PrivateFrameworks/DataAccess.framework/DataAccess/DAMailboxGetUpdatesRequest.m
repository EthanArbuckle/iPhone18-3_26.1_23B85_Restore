@interface DAMailboxGetUpdatesRequest
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation DAMailboxGetUpdatesRequest

- (unint64_t)hash
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d\n%d", -[DAMailboxGetUpdatesRequest maxSize](self, "maxSize"), -[DAMailboxRequest bodyFormat](self, "bodyFormat")];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 maxSize];
    if (v6 == [(DAMailboxGetUpdatesRequest *)self maxSize])
    {
      v7 = [v5 bodyFormat];
      v8 = v7 == [(DAMailboxRequest *)self bodyFormat];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = DAMailboxGetUpdatesRequest;
  v4 = [(DAMailboxGetUpdatesRequest *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ maxSize %d, bodyFormat %d", v4, -[DAMailboxGetUpdatesRequest maxSize](self, "maxSize"), -[DAMailboxRequest bodyFormat](self, "bodyFormat")];

  return v5;
}

@end