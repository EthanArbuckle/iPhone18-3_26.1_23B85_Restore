@interface IDSServerCertificate
- (BOOL)isEqual:(id)a3;
- (IDSServerCertificate)initWithDataRepresentation:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSServerCertificate

- (IDSServerCertificate)initWithDataRepresentation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IDSServerCertificate;
  v5 = [(IDSServerCertificate *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dataRepresentation = v5->_dataRepresentation;
    v5->_dataRepresentation = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSServerCertificate *)self dataRepresentation];
  v6 = [v3 stringWithFormat:@"<%@: %p hash: %lu>", v4, self, objc_msgSend(v5, "hash")];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 dataRepresentation];
    v6 = [(IDSServerCertificate *)self dataRepresentation];
    v7 = [v5 isEqualToData:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(IDSServerCertificate *)self dataRepresentation];
  v3 = [v2 hash];

  return v3;
}

@end