@interface IRCandidateInspection
- (IRCandidateInspection)initWithInspectionGenerator:(id)a3;
- (IRCandidateInspection)initWithInspectionServicePackage:(id)a3;
- (id)exportCandidateInspectionAsDictionary;
- (id)getCandidateIdentifier;
- (id)getClassificationDescription;
- (int64_t)getClassification;
@end

@implementation IRCandidateInspection

- (IRCandidateInspection)initWithInspectionGenerator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IRCandidateInspection;
  v6 = [(IRCandidateInspection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inspectionGenerator, a3);
  }

  return v7;
}

- (IRCandidateInspection)initWithInspectionServicePackage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IRCandidateInspection;
  v6 = [(IRCandidateInspection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inspectionServicePackage, a3);
  }

  return v7;
}

- (id)exportCandidateInspectionAsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:&stru_286755D18 forKeyedSubscript:@"ServicePackageInspection"];
  [v3 setObject:&stru_286755D18 forKeyedSubscript:@"GeneratorInspection"];
  v4 = [(IRCandidateInspection *)self inspectionServicePackage];

  if (v4)
  {
    v5 = [(IRCandidateInspection *)self inspectionServicePackage];
    v6 = [v5 exportCandidateInspectionAsDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"ServicePackageInspection"];
  }

  v7 = [(IRCandidateInspection *)self inspectionGenerator];

  if (v7)
  {
    v8 = [(IRCandidateInspection *)self inspectionGenerator];
    v9 = [v8 exportCandidateInspectionAsDictionary];
    [v3 setObject:v9 forKeyedSubscript:@"GeneratorInspection"];
  }

  return v3;
}

- (int64_t)getClassification
{
  v3 = [(IRCandidateInspection *)self inspectionServicePackage];

  if (v3)
  {
    v4 = [(IRCandidateInspection *)self inspectionServicePackage];
LABEL_5:
    v6 = v4;
    v7 = [v4 classification];

    return v7;
  }

  v5 = [(IRCandidateInspection *)self inspectionGenerator];

  if (v5)
  {
    v4 = [(IRCandidateInspection *)self inspectionGenerator];
    goto LABEL_5;
  }

  return 0;
}

- (id)getClassificationDescription
{
  v3 = [(IRCandidateInspection *)self inspectionServicePackage];

  if (v3)
  {
    v4 = [(IRCandidateInspection *)self inspectionServicePackage];
LABEL_5:
    v6 = v4;
    v7 = [v4 classificationDescription];

    goto LABEL_6;
  }

  v5 = [(IRCandidateInspection *)self inspectionGenerator];

  if (v5)
  {
    v4 = [(IRCandidateInspection *)self inspectionGenerator];
    goto LABEL_5;
  }

  v7 = &stru_286755D18;
LABEL_6:

  return v7;
}

- (id)getCandidateIdentifier
{
  v3 = [(IRCandidateInspection *)self inspectionServicePackage];

  if (v3)
  {
    v4 = [(IRCandidateInspection *)self inspectionServicePackage];
LABEL_5:
    v6 = v4;
    v7 = [v4 candidate];
    v8 = [v7 candidateIdentifier];

    goto LABEL_6;
  }

  v5 = [(IRCandidateInspection *)self inspectionGenerator];

  if (v5)
  {
    v4 = [(IRCandidateInspection *)self inspectionGenerator];
    goto LABEL_5;
  }

  v8 = &stru_286755D18;
LABEL_6:

  return v8;
}

@end