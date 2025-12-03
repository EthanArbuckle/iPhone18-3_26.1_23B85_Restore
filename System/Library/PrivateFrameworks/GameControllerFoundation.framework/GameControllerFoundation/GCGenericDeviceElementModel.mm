@interface GCGenericDeviceElementModel
+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceElementModel)init;
- (GCGenericDeviceElementModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceElementModel

- (GCGenericDeviceElementModel)init
{
  [(GCGenericDeviceElementModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceElementModel)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = GCGenericDeviceElementModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceElementModel *)&v11 init];
  v4->_elementCookie = [coderCopy decodeIntForKey:{@"elementCookie", v11.receiver, v11.super_class}];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
  predicate = v4->_predicate;
  v4->_predicate = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = v4->_identifier;
  v4->_identifier = v7;

  v4->_optional = [coderCopy decodeBoolForKey:@"optional"];
  v4->_typeOverride = [coderCopy decodeIntForKey:@"typeOverride"];
  v4->_calibrationMin = [coderCopy decodeIntegerForKey:@"calibrationMin"];
  v9 = [coderCopy decodeIntegerForKey:@"calibrationMax"];

  v4->_calibrationMax = v9;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[GCGenericDeviceElementModel elementCookie](self forKey:{"elementCookie"), @"elementCookie"}];
  predicate = [(GCGenericDeviceElementModel *)self predicate];
  [coderCopy encodeObject:predicate forKey:@"predicate"];

  identifier = [(GCGenericDeviceElementModel *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeBool:-[GCGenericDeviceElementModel optional](self forKey:{"optional"), @"optional"}];
  [coderCopy encodeInt:-[GCGenericDeviceElementModel typeOverride](self forKey:{"typeOverride"), @"typeOverride"}];
  [coderCopy encodeInteger:-[GCGenericDeviceElementModel calibrationMin](self forKey:{"calibrationMin"), @"calibrationMin"}];
  [coderCopy encodeInteger:-[GCGenericDeviceElementModel calibrationMax](self forKey:{"calibrationMax"), @"calibrationMax"}];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

  if (-[GCGenericDeviceElementModel elementCookie](self, "elementCookie") && (predicate = -[GCGenericDeviceElementModel elementCookie](self, "elementCookie"), predicate == [equalCopy elementCookie]))
  {
    v7 = 0;
  }

  else
  {
    predicate = [(GCGenericDeviceElementModel *)self predicate];
    predicate2 = [equalCopy predicate];
    if (![predicate isEqual:predicate2])
    {
      v8 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v7 = 1;
  }

  identifier = [(GCGenericDeviceElementModel *)self identifier];
  identifier2 = [equalCopy identifier];
  if ([identifier isEqual:identifier2] && (v11 = -[GCGenericDeviceElementModel optional](self, "optional"), v11 == objc_msgSend(equalCopy, "optional")))
  {
    typeOverride = [(GCGenericDeviceElementModel *)self typeOverride];
    v8 = typeOverride == [equalCopy typeOverride];
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
  identifier = [(GCGenericDeviceElementModel *)self identifier];
  predicate = [(GCGenericDeviceElementModel *)self predicate];
  v8 = [v3 stringWithFormat:@"<%@ %p> {\n\t identifier = %@\n\t predicate = %@\n\t optional = %d\n\t type (override) = %i\n}", v5, self, identifier, predicate, -[GCGenericDeviceElementModel optional](self, "optional"), -[GCGenericDeviceElementModel typeOverride](self, "typeOverride")];

  return v8;
}

+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v78[2] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v63 = 0;
  v7 = [representation gc_requiredObjectForKey:@"Predicate" ofClass:objc_opt_class() error:&v63];
  v8 = v63;
  if (!v7)
  {
    if (error)
    {
      v25 = MEMORY[0x1E696ABC0];
      v77[0] = *MEMORY[0x1E696A578];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v78[0] = v26;
      v77[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v8 localizedFailureReason];
      v78[1] = localizedFailureReason;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:2];
      *error = [(NSError *)v25 gc_modelError:v28 userInfo:?];
    }

    goto LABEL_46;
  }

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:v7];
  if (!v9)
  {
    if (error)
    {
      v49 = MEMORY[0x1E696ABC0];
      v75[0] = *MEMORY[0x1E696A578];
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v76[0] = v50;
      v75[1] = *MEMORY[0x1E696A588];
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"String is not a valid predicate: %@", v7];
      v76[1] = v51;
      v75[2] = *MEMORY[0x1E696AA08];
      null = v8;
      if (!v8)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v76[2] = null;
      v75[3] = @"GCFailingKeyPathErrorKey";
      v74 = @"Predicate";
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
      v76[3] = v53;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:4];
      *error = [(NSError *)v49 gc_modelError:v54 userInfo:?];

      if (!v8)
      {
      }
    }

    goto LABEL_46;
  }

  [v6 setPredicate:v9];

  v62 = 0;
  v10 = [representation gc_requiredObjectForKey:@"Identifier" ofClass:objc_opt_class() error:&v62];
  v11 = v62;
  if (!v10)
  {
    if (error)
    {
      v29 = MEMORY[0x1E696ABC0];
      v72[0] = *MEMORY[0x1E696A578];
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v73[0] = v30;
      v72[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      v73[1] = localizedFailureReason2;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
      *error = [(NSError *)v29 gc_modelError:v32 userInfo:?];
    }

    goto LABEL_46;
  }

  [v6 setIdentifier:v10];

  v61 = 0;
  v12 = [representation gc_objectForKey:@"Optional" ofClass:objc_opt_class() error:&v61];
  v13 = v61;
  v14 = v13;
  if (!v12 && v13)
  {
    if (error)
    {
      v33 = MEMORY[0x1E696ABC0];
      v70[0] = *MEMORY[0x1E696A578];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v71[0] = v34;
      v70[1] = *MEMORY[0x1E696A588];
      localizedFailureReason3 = [v14 localizedFailureReason];
      v71[1] = localizedFailureReason3;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
      *error = [(NSError *)v33 gc_modelError:v36 userInfo:?];
    }

    goto LABEL_46;
  }

  if (v12)
  {
    [v6 setOptional:{objc_msgSend(v12, "BOOLValue")}];
  }

  v60 = 0;
  v15 = [representation gc_objectForKey:@"TypeOverride" ofClass:objc_opt_class() error:&v60];
  v16 = v60;
  v17 = v16;
  if (!v15 && v16)
  {
    if (error)
    {
      v37 = MEMORY[0x1E696ABC0];
      v68[0] = *MEMORY[0x1E696A578];
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v69[0] = v38;
      v68[1] = *MEMORY[0x1E696A588];
      localizedFailureReason4 = [v17 localizedFailureReason];
      v69[1] = localizedFailureReason4;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:2];
      *error = [(NSError *)v37 gc_modelError:v40 userInfo:?];
    }

    goto LABEL_46;
  }

  if (v15)
  {
    [v6 setTypeOverride:{objc_msgSend(v15, "intValue")}];
  }

  v59 = 0;
  v18 = [representation gc_objectForKey:@"CalibrationMin" ofClass:objc_opt_class() error:&v59];
  v19 = v59;
  v20 = v19;
  if (!v18 && v19)
  {
    if (error)
    {
      v41 = MEMORY[0x1E696ABC0];
      v66[0] = *MEMORY[0x1E696A578];
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v67[0] = v42;
      v66[1] = *MEMORY[0x1E696A588];
      localizedFailureReason5 = [v20 localizedFailureReason];
      v67[1] = localizedFailureReason5;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:2];
      *error = [(NSError *)v41 gc_modelError:v44 userInfo:?];
    }

    goto LABEL_46;
  }

  if (v18)
  {
    [v6 setCalibrationMin:{objc_msgSend(v18, "integerValue")}];
  }

  v58 = 0;
  v21 = [representation gc_objectForKey:@"CalibrationMax" ofClass:objc_opt_class() error:&v58];
  v22 = v58;
  v23 = v22;
  if (!v21 && v22)
  {
    if (error)
    {
      v45 = MEMORY[0x1E696ABC0];
      v64[0] = *MEMORY[0x1E696A578];
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v65[0] = v46;
      v64[1] = *MEMORY[0x1E696A588];
      localizedFailureReason6 = [v23 localizedFailureReason];
      v65[1] = localizedFailureReason6;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
      *error = [(NSError *)v45 gc_modelError:v48 userInfo:?];
    }

LABEL_46:
    build = 0;
    goto LABEL_47;
  }

  if (v21)
  {
    [v6 setCalibrationMax:{objc_msgSend(v21, "integerValue")}];
  }

  build = [v6 build];
LABEL_47:

  v55 = *MEMORY[0x1E69E9840];

  return build;
}

@end