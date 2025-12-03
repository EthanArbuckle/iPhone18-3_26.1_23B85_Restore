@interface DKDiagnosticParameters
+ (id)diagnosticParametersWithDictionary:(id)dictionary;
- (DKDiagnosticParameters)initWithCoder:(id)coder;
- (DKDiagnosticParameters)initWithDictionary:(id)dictionary;
- (id)_decoderClasses;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DKDiagnosticParameters

+ (id)diagnosticParametersWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

- (DKDiagnosticParameters)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = DKDiagnosticParameters;
  v5 = [(DKDiagnosticParameters *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"predicates"];
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v6 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v5->_predicates, v6);
    v7 = [dictionaryCopy objectForKeyedSubscript:@"specifications"];
    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v7 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v5->_specifications, v7);
    v8 = [dictionaryCopy objectForKeyedSubscript:@"parameters"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v8 = MEMORY[0x277CBEC10];
    }

    parameters = v5->_parameters;
    v5->_parameters = v8;
  }

  return v5;
}

- (DKDiagnosticParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = DKDiagnosticParameters;
  v5 = [(DKDiagnosticParameters *)&v17 init];
  v6 = v5;
  if (v5)
  {
    _decoderClasses = [(DKDiagnosticParameters *)v5 _decoderClasses];
    v8 = [coderCopy decodeObjectOfClasses:_decoderClasses forKey:@"predicates"];
    predicates = v6->_predicates;
    v6->_predicates = v8;

    _decoderClasses2 = [(DKDiagnosticParameters *)v6 _decoderClasses];
    v11 = [coderCopy decodeObjectOfClasses:_decoderClasses2 forKey:@"specifications"];
    specifications = v6->_specifications;
    v6->_specifications = v11;

    _decoderClasses3 = [(DKDiagnosticParameters *)v6 _decoderClasses];
    v14 = [coderCopy decodeObjectOfClasses:_decoderClasses3 forKey:@"parameters"];
    parameters = v6->_parameters;
    v6->_parameters = v14;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  predicates = self->_predicates;
  coderCopy = coder;
  [coderCopy encodeObject:predicates forKey:@"predicates"];
  [coderCopy encodeObject:self->_specifications forKey:@"specifications"];
  [coderCopy encodeObject:self->_parameters forKey:@"parameters"];
}

- (id)_decoderClasses
{
  if (_decoderClasses_onceToken_0 != -1)
  {
    [DKDiagnosticParameters _decoderClasses];
  }

  v3 = _decoderClasses_decoderClasses_0;

  return v3;
}

uint64_t __41__DKDiagnosticParameters__decoderClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  _decoderClasses_decoderClasses_0 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSDictionary *)self->_predicates copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDictionary *)self->_specifications copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSDictionary *)self->_parameters copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

@end