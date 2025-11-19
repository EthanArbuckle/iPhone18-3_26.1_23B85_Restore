@interface GCGenericDeviceElementModel
+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceElementModel)init;
- (GCGenericDeviceElementModel)initWithCoder:(id)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceElementModel

- (GCGenericDeviceElementModel)init
{
  [(GCGenericDeviceElementModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceElementModel)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = GCGenericDeviceElementModel;
  v3 = a3;
  v4 = [(GCGenericDeviceElementModel *)&v11 init];
  v4->_elementCookie = [v3 decodeIntForKey:{@"elementCookie", v11.receiver, v11.super_class}];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
  predicate = v4->_predicate;
  v4->_predicate = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = v4->_identifier;
  v4->_identifier = v7;

  v4->_optional = [v3 decodeBoolForKey:@"optional"];
  v4->_typeOverride = [v3 decodeIntForKey:@"typeOverride"];
  v4->_calibrationMin = [v3 decodeIntegerForKey:@"calibrationMin"];
  v9 = [v3 decodeIntegerForKey:@"calibrationMax"];

  v4->_calibrationMax = v9;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInt:-[GCGenericDeviceElementModel elementCookie](self forKey:{"elementCookie"), @"elementCookie"}];
  v4 = [(GCGenericDeviceElementModel *)self predicate];
  [v6 encodeObject:v4 forKey:@"predicate"];

  v5 = [(GCGenericDeviceElementModel *)self identifier];
  [v6 encodeObject:v5 forKey:@"identifier"];

  [v6 encodeBool:-[GCGenericDeviceElementModel optional](self forKey:{"optional"), @"optional"}];
  [v6 encodeInt:-[GCGenericDeviceElementModel typeOverride](self forKey:{"typeOverride"), @"typeOverride"}];
  [v6 encodeInteger:-[GCGenericDeviceElementModel calibrationMin](self forKey:{"calibrationMin"), @"calibrationMin"}];
  [v6 encodeInteger:-[GCGenericDeviceElementModel calibrationMax](self forKey:{"calibrationMax"), @"calibrationMax"}];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([(GCGenericDeviceElementModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
LABEL_9:
      v8 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceElementModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_9;
    }
  }

  if (-[GCGenericDeviceElementModel elementCookie](self, "elementCookie") && (v6 = -[GCGenericDeviceElementModel elementCookie](self, "elementCookie"), v6 == [v5 elementCookie]))
  {
    v7 = 0;
  }

  else
  {
    v6 = [(GCGenericDeviceElementModel *)self predicate];
    v3 = [v5 predicate];
    if (![v6 isEqual:v3])
    {
      v8 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v7 = 1;
  }

  v9 = [(GCGenericDeviceElementModel *)self identifier];
  v10 = [v5 identifier];
  if ([v9 isEqual:v10] && (v11 = -[GCGenericDeviceElementModel optional](self, "optional"), v11 == objc_msgSend(v5, "optional")))
  {
    v12 = [(GCGenericDeviceElementModel *)self typeOverride];
    v8 = v12 == [v5 typeOverride];
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    goto LABEL_18;
  }

LABEL_19:

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCGenericDeviceElementModel *)self identifier];
  v7 = [(GCGenericDeviceElementModel *)self predicate];
  v8 = [v3 stringWithFormat:@"<%@ %p> {\n\t identifier = %@\n\t predicate = %@\n\t optional = %d\n\t type (override) = %i\n}", v5, self, v6, v7, -[GCGenericDeviceElementModel optional](self, "optional"), -[GCGenericDeviceElementModel typeOverride](self, "typeOverride")];

  return v8;
}

+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v78[2] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v63 = 0;
  v7 = [a3 gc_requiredObjectForKey:@"Predicate" ofClass:objc_opt_class() error:&v63];
  v8 = v63;
  if (!v7)
  {
    if (a4)
    {
      v25 = MEMORY[0x1E696ABC0];
      v77[0] = *MEMORY[0x1E696A578];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v78[0] = v26;
      v77[1] = *MEMORY[0x1E696A588];
      v27 = [v8 localizedFailureReason];
      v78[1] = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:2];
      *a4 = [(NSError *)v25 gc_modelError:v28 userInfo:?];
    }

    goto LABEL_46;
  }

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:v7];
  if (!v9)
  {
    if (a4)
    {
      v49 = MEMORY[0x1E696ABC0];
      v75[0] = *MEMORY[0x1E696A578];
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v76[0] = v50;
      v75[1] = *MEMORY[0x1E696A588];
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"String is not a valid predicate: %@", v7];
      v76[1] = v51;
      v75[2] = *MEMORY[0x1E696AA08];
      v52 = v8;
      if (!v8)
      {
        v52 = [MEMORY[0x1E695DFB0] null];
      }

      v76[2] = v52;
      v75[3] = @"GCFailingKeyPathErrorKey";
      v74 = @"Predicate";
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
      v76[3] = v53;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:4];
      *a4 = [(NSError *)v49 gc_modelError:v54 userInfo:?];

      if (!v8)
      {
      }
    }

    goto LABEL_46;
  }

  [v6 setPredicate:v9];

  v62 = 0;
  v10 = [a3 gc_requiredObjectForKey:@"Identifier" ofClass:objc_opt_class() error:&v62];
  v11 = v62;
  if (!v10)
  {
    if (a4)
    {
      v29 = MEMORY[0x1E696ABC0];
      v72[0] = *MEMORY[0x1E696A578];
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v73[0] = v30;
      v72[1] = *MEMORY[0x1E696A588];
      v31 = [v11 localizedFailureReason];
      v73[1] = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
      *a4 = [(NSError *)v29 gc_modelError:v32 userInfo:?];
    }

    goto LABEL_46;
  }

  [v6 setIdentifier:v10];

  v61 = 0;
  v12 = [a3 gc_objectForKey:@"Optional" ofClass:objc_opt_class() error:&v61];
  v13 = v61;
  v14 = v13;
  if (!v12 && v13)
  {
    if (a4)
    {
      v33 = MEMORY[0x1E696ABC0];
      v70[0] = *MEMORY[0x1E696A578];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v71[0] = v34;
      v70[1] = *MEMORY[0x1E696A588];
      v35 = [v14 localizedFailureReason];
      v71[1] = v35;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
      *a4 = [(NSError *)v33 gc_modelError:v36 userInfo:?];
    }

    goto LABEL_46;
  }

  if (v12)
  {
    [v6 setOptional:{objc_msgSend(v12, "BOOLValue")}];
  }

  v60 = 0;
  v15 = [a3 gc_objectForKey:@"TypeOverride" ofClass:objc_opt_class() error:&v60];
  v16 = v60;
  v17 = v16;
  if (!v15 && v16)
  {
    if (a4)
    {
      v37 = MEMORY[0x1E696ABC0];
      v68[0] = *MEMORY[0x1E696A578];
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v69[0] = v38;
      v68[1] = *MEMORY[0x1E696A588];
      v39 = [v17 localizedFailureReason];
      v69[1] = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:2];
      *a4 = [(NSError *)v37 gc_modelError:v40 userInfo:?];
    }

    goto LABEL_46;
  }

  if (v15)
  {
    [v6 setTypeOverride:{objc_msgSend(v15, "intValue")}];
  }

  v59 = 0;
  v18 = [a3 gc_objectForKey:@"CalibrationMin" ofClass:objc_opt_class() error:&v59];
  v19 = v59;
  v20 = v19;
  if (!v18 && v19)
  {
    if (a4)
    {
      v41 = MEMORY[0x1E696ABC0];
      v66[0] = *MEMORY[0x1E696A578];
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v67[0] = v42;
      v66[1] = *MEMORY[0x1E696A588];
      v43 = [v20 localizedFailureReason];
      v67[1] = v43;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:2];
      *a4 = [(NSError *)v41 gc_modelError:v44 userInfo:?];
    }

    goto LABEL_46;
  }

  if (v18)
  {
    [v6 setCalibrationMin:{objc_msgSend(v18, "integerValue")}];
  }

  v58 = 0;
  v21 = [a3 gc_objectForKey:@"CalibrationMax" ofClass:objc_opt_class() error:&v58];
  v22 = v58;
  v23 = v22;
  if (!v21 && v22)
  {
    if (a4)
    {
      v45 = MEMORY[0x1E696ABC0];
      v64[0] = *MEMORY[0x1E696A578];
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v65[0] = v46;
      v64[1] = *MEMORY[0x1E696A588];
      v47 = [v23 localizedFailureReason];
      v65[1] = v47;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
      *a4 = [(NSError *)v45 gc_modelError:v48 userInfo:?];
    }

LABEL_46:
    v24 = 0;
    goto LABEL_47;
  }

  if (v21)
  {
    [v6 setCalibrationMax:{objc_msgSend(v21, "integerValue")}];
  }

  v24 = [v6 build];
LABEL_47:

  v55 = *MEMORY[0x1E69E9840];

  return v24;
}

@end