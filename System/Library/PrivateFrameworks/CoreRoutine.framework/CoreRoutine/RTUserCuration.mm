@interface RTUserCuration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUserCuration:(id)a3;
- (RTUserCuration)initWithCoder:(id)a3;
- (RTUserCuration)initWithIdentifier:(id)a3 submissionDate:(id)a4 expirationDate:(id)a5 entryDate:(id)a6 exitDate:(id)a7 visitIdentifier:(id)a8 originalLabel:(id)a9 curatedLabel:(id)a10;
- (id)abbreviatedDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTUserCuration

- (RTUserCuration)initWithIdentifier:(id)a3 submissionDate:(id)a4 expirationDate:(id)a5 entryDate:(id)a6 exitDate:(id)a7 visitIdentifier:(id)a8 originalLabel:(id)a9 curatedLabel:(id)a10
{
  v16 = a3;
  v17 = a4;
  v32 = a5;
  v31 = a6;
  v30 = a7;
  v28 = a8;
  v26 = a9;
  v25 = a10;
  v29 = v17;
  if (!v16)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: identifier";
LABEL_19:
    _os_log_error_impl(&dword_1BF1C4000, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_20;
  }

  if (!v17)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: submissionDate";
    goto LABEL_19;
  }

  if (!v32)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: expirationDate";
    goto LABEL_19;
  }

  if (!v31)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: entryDate";
    goto LABEL_19;
  }

  if (!v30)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: exitDate";
      goto LABEL_19;
    }

LABEL_20:

    v21 = 0;
    v20 = self;
    goto LABEL_21;
  }

  v33.receiver = self;
  v33.super_class = RTUserCuration;
  v18 = [(RTUserCuration *)&v33 init:v25];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
    objc_storeStrong(p_isa + 7, a8);
    objc_storeStrong(p_isa + 8, a9);
    objc_storeStrong(p_isa + 6, a10);
  }

  v20 = p_isa;
  v21 = v20;
LABEL_21:

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = self->_identifier;
  v5 = [(NSDate *)self->_submissionDate stringFromDate];
  v6 = [(NSDate *)self->_expirationDate stringFromDate];
  v7 = [(NSDate *)self->_visitEntryDate stringFromDate];
  v8 = [(NSDate *)self->_visitExitDate stringFromDate];
  visitIdentifier = self->_visitIdentifier;
  v10 = [(RTMapItem *)self->_originalLabel name];
  v11 = [(RTMapItem *)self->_curatedLabel name];
  v12 = [v3 stringWithFormat:@"identifier, %@, submissionDate, %@, expirationDate, %@, visit entry date, %@, visit exit date, %@, visit identifier, %@, original label, %@, curated label, %@", identifier, v5, v6, v7, v8, visitIdentifier, v10, v11];

  return v12;
}

- (id)abbreviatedDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
  v4 = MEMORY[0x1E696AEC0];
  identifier = self->_identifier;
  v6 = [v3 stringFromDate:self->_submissionDate];
  v7 = [v3 stringFromDate:self->_visitEntryDate];
  v8 = [v3 stringFromDate:self->_visitExitDate];
  v9 = [v4 stringWithFormat:@"ID, %@, submissionDate, %@, visit duration, %@ -> %@", identifier, v6, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_submissionDate forKey:@"submissionDate"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v5 encodeObject:self->_visitEntryDate forKey:@"visitEntryDate"];
  [v5 encodeObject:self->_visitExitDate forKey:@"visitExitDate"];
  [v5 encodeObject:self->_visitIdentifier forKey:@"visitIdentifier"];
  [v5 encodeObject:self->_originalLabel forKey:@"originalLabel"];
  [v5 encodeObject:self->_curatedLabel forKey:@"curatedLabel"];
}

- (RTUserCuration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"submissionDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visitEntryDate"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visitExitDate"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visitIdentifier"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalLabel"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"curatedLabel"];

  v13 = [(RTUserCuration *)self initWithIdentifier:v5 submissionDate:v6 expirationDate:v7 entryDate:v8 exitDate:v9 visitIdentifier:v10 originalLabel:v11 curatedLabel:v12];
  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  originalLabel = self->_originalLabel;
  return [v4 initWithIdentifier:self->_identifier submissionDate:self->_submissionDate expirationDate:self->_expirationDate entryDate:self->_visitEntryDate exitDate:self->_visitExitDate visitIdentifier:self->_visitIdentifier originalLabel:originalLabel curatedLabel:self->_curatedLabel];
}

- (BOOL)isEqualToUserCuration:(id)a3
{
  v7 = a3;
  v8 = v7;
  identifier = self->_identifier;
  v10 = identifier;
  if (!identifier)
  {
    v3 = [v7 identifier];
    if (!v3)
    {
      v11 = 0;
      goto LABEL_8;
    }

    v10 = self->_identifier;
  }

  v4 = [v8 identifier];
  if (([(NSUUID *)v10 isEqual:v4]& 1) == 0)
  {

    v12 = 0;
    goto LABEL_77;
  }

  v11 = 1;
LABEL_8:
  submissionDate = self->_submissionDate;
  v14 = submissionDate;
  if (!submissionDate)
  {
    v15 = [v8 submissionDate];
    if (!v15)
    {
      v59 = v11;
      v57 = 0;
      v16 = 0;
      goto LABEL_17;
    }

    v57 = v15;
    v14 = self->_submissionDate;
  }

  v5 = [v8 submissionDate];
  if (![(NSDate *)v14 isEqualToDate:v5])
  {

    v12 = 0;
    if (submissionDate)
    {
      goto LABEL_75;
    }

    goto LABEL_14;
  }

  v59 = v11;
  v16 = 1;
LABEL_17:
  expirationDate = self->_expirationDate;
  v18 = expirationDate;
  if (!expirationDate)
  {
    v19 = [v8 expirationDate];
    if (!v19)
    {
      v54 = 0;
      v56 = 0;
      goto LABEL_24;
    }

    v54 = v19;
    v18 = self->_expirationDate;
  }

  v58 = [v8 expirationDate];
  if (![(NSDate *)v18 isEqualToDate:?])
  {
    v12 = 0;
    goto LABEL_70;
  }

  v56 = 1;
LABEL_24:
  visitEntryDate = self->_visitEntryDate;
  v55 = visitEntryDate;
  if (!visitEntryDate)
  {
    v21 = [v8 visitEntryDate];
    if (!v21)
    {
      v52 = 0;
      v53 = v16;
      v49 = 0;
      goto LABEL_31;
    }

    v49 = v21;
    visitEntryDate = self->_visitEntryDate;
  }

  v22 = [v8 visitEntryDate];
  v23 = visitEntryDate;
  visitEntryDate = v22;
  if (![(NSDate *)v23 isEqualToDate:v22])
  {
    v12 = 0;
    goto LABEL_67;
  }

  v52 = 1;
  v53 = v16;
LABEL_31:
  visitExitDate = self->_visitExitDate;
  v51 = visitExitDate;
  if (!visitExitDate)
  {
    v25 = [v8 visitExitDate];
    if (!v25)
    {
      v45 = 0;
      v48 = 0;
      goto LABEL_38;
    }

    v45 = v25;
    visitExitDate = self->_visitExitDate;
  }

  v50 = [v8 visitExitDate];
  if (![(NSDate *)visitExitDate isEqualToDate:?])
  {
    v12 = 0;
    v16 = v53;
    goto LABEL_64;
  }

  v48 = 1;
LABEL_38:
  visitIdentifier = self->_visitIdentifier;
  v47 = visitIdentifier;
  if (!visitIdentifier)
  {
    v27 = [v8 visitIdentifier];
    if (!v27)
    {
      v41 = 0;
      v44 = 0;
      goto LABEL_45;
    }

    v41 = v27;
    visitIdentifier = self->_visitIdentifier;
  }

  v46 = [v8 visitIdentifier];
  if (![(NSUUID *)visitIdentifier isEqual:?])
  {
    v12 = 0;
    v16 = v53;
    goto LABEL_61;
  }

  v44 = 1;
LABEL_45:
  originalLabel = self->_originalLabel;
  v43 = originalLabel;
  if (!originalLabel)
  {
    v29 = [v8 originalLabel];
    if (!v29)
    {
      v38 = 0;
      v40 = 0;
      goto LABEL_52;
    }

    v38 = v29;
    originalLabel = self->_originalLabel;
  }

  v42 = [v8 originalLabel];
  if (![(RTMapItem *)originalLabel isEqualToMapItem:?])
  {
    v12 = 0;
LABEL_57:
    v16 = v53;
LABEL_58:

    goto LABEL_59;
  }

  v40 = 1;
LABEL_52:
  curatedLabel = self->_curatedLabel;
  v31 = curatedLabel;
  if (!curatedLabel)
  {
    v32 = [v8 curatedLabel];
    if (!v32)
    {
      v36 = 0;
      v12 = 1;
LABEL_93:

      v16 = v53;
      if (v40)
      {
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    v37 = v32;
    v31 = self->_curatedLabel;
  }

  v39 = visitEntryDate;
  v33 = v31;
  v34 = [v8 curatedLabel];
  v12 = [(RTMapItem *)v33 isEqualToMapItem:v34];

  if (!curatedLabel)
  {
    visitEntryDate = v39;
    v36 = v37;
    goto LABEL_93;
  }

  visitEntryDate = v39;
  if (v40)
  {
    goto LABEL_57;
  }

  v16 = v53;
LABEL_59:
  if (v43)
  {
    if (!v44)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (v44)
  {
LABEL_61:
  }

LABEL_62:
  if (v47)
  {
    if (!v48)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (v48)
  {
LABEL_64:
  }

LABEL_65:
  if (v51)
  {
    if (!v52)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if (v52)
  {
LABEL_67:
  }

LABEL_68:
  if (v55)
  {
    if (!v56)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (v56)
  {
LABEL_70:
  }

LABEL_71:
  if (expirationDate)
  {
    if (!v16)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (v16)
  {
LABEL_73:
  }

LABEL_74:
  v11 = v59;
  if (submissionDate)
  {
LABEL_75:
    if (!v11)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

LABEL_14:

  if (v11)
  {
LABEL_76:
  }

LABEL_77:
  if (!identifier)
  {
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTUserCuration *)self isEqualToUserCuration:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_identifier hash];
  v4 = [(NSDate *)self->_submissionDate hash]^ v3;
  v5 = [(NSDate *)self->_expirationDate hash];
  v6 = v4 ^ v5 ^ [(NSDate *)self->_visitEntryDate hash];
  v7 = [(NSDate *)self->_visitExitDate hash];
  v8 = v7 ^ [(NSUUID *)self->_visitIdentifier hash];
  v9 = v6 ^ v8 ^ [(RTMapItem *)self->_originalLabel hash];
  return v9 ^ [(RTMapItem *)self->_curatedLabel hash];
}

@end