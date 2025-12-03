@interface IRCandidateInspection
- (IRCandidateInspection)initWithInspectionGenerator:(id)generator;
- (IRCandidateInspection)initWithInspectionServicePackage:(id)package;
- (id)exportCandidateInspectionAsDictionary;
- (id)getCandidateIdentifier;
- (id)getClassificationDescription;
- (int64_t)getClassification;
@end

@implementation IRCandidateInspection

- (IRCandidateInspection)initWithInspectionGenerator:(id)generator
{
  generatorCopy = generator;
  v9.receiver = self;
  v9.super_class = IRCandidateInspection;
  v6 = [(IRCandidateInspection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inspectionGenerator, generator);
  }

  return v7;
}

- (IRCandidateInspection)initWithInspectionServicePackage:(id)package
{
  packageCopy = package;
  v9.receiver = self;
  v9.super_class = IRCandidateInspection;
  v6 = [(IRCandidateInspection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inspectionServicePackage, package);
  }

  return v7;
}

- (id)exportCandidateInspectionAsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:&stru_286755D18 forKeyedSubscript:@"ServicePackageInspection"];
  [v3 setObject:&stru_286755D18 forKeyedSubscript:@"GeneratorInspection"];
  inspectionServicePackage = [(IRCandidateInspection *)self inspectionServicePackage];

  if (inspectionServicePackage)
  {
    inspectionServicePackage2 = [(IRCandidateInspection *)self inspectionServicePackage];
    exportCandidateInspectionAsDictionary = [inspectionServicePackage2 exportCandidateInspectionAsDictionary];
    [v3 setObject:exportCandidateInspectionAsDictionary forKeyedSubscript:@"ServicePackageInspection"];
  }

  inspectionGenerator = [(IRCandidateInspection *)self inspectionGenerator];

  if (inspectionGenerator)
  {
    inspectionGenerator2 = [(IRCandidateInspection *)self inspectionGenerator];
    exportCandidateInspectionAsDictionary2 = [inspectionGenerator2 exportCandidateInspectionAsDictionary];
    [v3 setObject:exportCandidateInspectionAsDictionary2 forKeyedSubscript:@"GeneratorInspection"];
  }

  return v3;
}

- (int64_t)getClassification
{
  inspectionServicePackage = [(IRCandidateInspection *)self inspectionServicePackage];

  if (inspectionServicePackage)
  {
    inspectionServicePackage2 = [(IRCandidateInspection *)self inspectionServicePackage];
LABEL_5:
    v6 = inspectionServicePackage2;
    classification = [inspectionServicePackage2 classification];

    return classification;
  }

  inspectionGenerator = [(IRCandidateInspection *)self inspectionGenerator];

  if (inspectionGenerator)
  {
    inspectionServicePackage2 = [(IRCandidateInspection *)self inspectionGenerator];
    goto LABEL_5;
  }

  return 0;
}

- (id)getClassificationDescription
{
  inspectionServicePackage = [(IRCandidateInspection *)self inspectionServicePackage];

  if (inspectionServicePackage)
  {
    inspectionServicePackage2 = [(IRCandidateInspection *)self inspectionServicePackage];
LABEL_5:
    v6 = inspectionServicePackage2;
    classificationDescription = [inspectionServicePackage2 classificationDescription];

    goto LABEL_6;
  }

  inspectionGenerator = [(IRCandidateInspection *)self inspectionGenerator];

  if (inspectionGenerator)
  {
    inspectionServicePackage2 = [(IRCandidateInspection *)self inspectionGenerator];
    goto LABEL_5;
  }

  classificationDescription = &stru_286755D18;
LABEL_6:

  return classificationDescription;
}

- (id)getCandidateIdentifier
{
  inspectionServicePackage = [(IRCandidateInspection *)self inspectionServicePackage];

  if (inspectionServicePackage)
  {
    inspectionServicePackage2 = [(IRCandidateInspection *)self inspectionServicePackage];
LABEL_5:
    v6 = inspectionServicePackage2;
    candidate = [inspectionServicePackage2 candidate];
    candidateIdentifier = [candidate candidateIdentifier];

    goto LABEL_6;
  }

  inspectionGenerator = [(IRCandidateInspection *)self inspectionGenerator];

  if (inspectionGenerator)
  {
    inspectionServicePackage2 = [(IRCandidateInspection *)self inspectionGenerator];
    goto LABEL_5;
  }

  candidateIdentifier = &stru_286755D18;
LABEL_6:

  return candidateIdentifier;
}

@end