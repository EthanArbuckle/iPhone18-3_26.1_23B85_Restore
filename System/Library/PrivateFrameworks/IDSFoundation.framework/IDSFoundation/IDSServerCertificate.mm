@interface IDSServerCertificate
- (BOOL)isEqual:(id)equal;
- (IDSServerCertificate)initWithDataRepresentation:(id)representation;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSServerCertificate

- (IDSServerCertificate)initWithDataRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = IDSServerCertificate;
  v5 = [(IDSServerCertificate *)&v9 init];
  if (v5)
  {
    v6 = [representationCopy copy];
    dataRepresentation = v5->_dataRepresentation;
    v5->_dataRepresentation = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  dataRepresentation = [(IDSServerCertificate *)self dataRepresentation];
  v6 = [v3 stringWithFormat:@"<%@: %p hash: %lu>", v4, self, objc_msgSend(dataRepresentation, "hash")];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dataRepresentation = [equalCopy dataRepresentation];
    dataRepresentation2 = [(IDSServerCertificate *)self dataRepresentation];
    v7 = [dataRepresentation isEqualToData:dataRepresentation2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  dataRepresentation = [(IDSServerCertificate *)self dataRepresentation];
  v3 = [dataRepresentation hash];

  return v3;
}

@end