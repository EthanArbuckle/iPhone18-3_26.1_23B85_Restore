@interface GCGenericDeviceDriverModel
+ (GCGenericDeviceDriverModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDriverModel)init;
- (GCGenericDeviceDriverModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDriverModel

- (GCGenericDeviceDriverModel)init
{
  [(GCGenericDeviceDriverModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceDriverModel)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = GCGenericDeviceDriverModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDriverModel *)&v20 init];
  v5 = MEMORY[0x1E695DFD8];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"elements"];
  elements = v4->_elements;
  v4->_elements = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"properties"];
  properties = v4->_properties;
  v4->_properties = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"input"];
  input = v4->_input;
  v4->_input = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"motion"];
  motion = v4->_motion;
  v4->_motion = v14;

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rumble"];

  rumble = v4->_rumble;
  v4->_rumble = v16;

  v18 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  elements = [(GCGenericDeviceDriverModel *)self elements];
  [coderCopy encodeObject:elements forKey:@"elements"];

  properties = [(GCGenericDeviceDriverModel *)self properties];
  [coderCopy encodeObject:properties forKey:@"properties"];

  input = [(GCGenericDeviceDriverModel *)self input];
  [coderCopy encodeObject:input forKey:@"input"];

  motion = [(GCGenericDeviceDriverModel *)self motion];
  [coderCopy encodeObject:motion forKey:@"motion"];

  rumble = [(GCGenericDeviceDriverModel *)self rumble];
  [coderCopy encodeObject:rumble forKey:@"rumble"];
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
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceDriverModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_10;
    }

LABEL_6:
    elements = [(GCGenericDeviceDriverModel *)self elements];
    elements2 = [equalCopy elements];
    if (![elements isEqual:elements2])
    {
      v10 = 0;
LABEL_30:

      goto LABEL_31;
    }

    properties = [(GCGenericDeviceDriverModel *)self properties];
    properties2 = [equalCopy properties];
    if (properties != properties2)
    {
      properties3 = [(GCGenericDeviceDriverModel *)self properties];
      properties4 = [equalCopy properties];
      v37 = properties3;
      if (![properties3 isEqual:?])
      {
        v10 = 0;
        goto LABEL_28;
      }
    }

    input = [(GCGenericDeviceDriverModel *)self input];
    input2 = [equalCopy input];
    if (input != input2)
    {
      input3 = [(GCGenericDeviceDriverModel *)self input];
      input4 = [equalCopy input];
      v34 = input3;
      if (![input3 isEqual:input4])
      {
        v10 = 0;
LABEL_26:

LABEL_27:
        if (properties == properties2)
        {
LABEL_29:

          goto LABEL_30;
        }

LABEL_28:

        goto LABEL_29;
      }
    }

    motion = [(GCGenericDeviceDriverModel *)self motion];
    motion2 = [equalCopy motion];
    v35 = motion;
    v16 = motion == motion2;
    v17 = motion2;
    if (v16)
    {
      v31 = input2;
      v32 = input;
    }

    else
    {
      motion3 = [(GCGenericDeviceDriverModel *)self motion];
      motion4 = [equalCopy motion];
      v29 = motion3;
      if (![motion3 isEqual:?])
      {
        v10 = 0;
        v26 = v35;
        goto LABEL_24;
      }

      v31 = input2;
      v32 = input;
    }

    v30 = v17;
    rumble = [(GCGenericDeviceDriverModel *)self rumble];
    rumble2 = [equalCopy rumble];
    v21 = rumble2;
    if (rumble == rumble2)
    {

      v10 = 1;
    }

    else
    {
      rumble3 = [(GCGenericDeviceDriverModel *)self rumble];
      [equalCopy rumble];
      v23 = properties2;
      v25 = v24 = properties;
      v10 = [rumble3 isEqual:v25];

      properties = v24;
      properties2 = v23;
    }

    v26 = v35;
    v17 = v30;
    input2 = v31;
    input = v32;
    if (v35 == v30)
    {
LABEL_25:

      if (input == input2)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (([(GCGenericDeviceDriverModel *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_10:
  v10 = 0;
LABEL_31:

  return v10;
}

- (id)debugDescription
{
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  elements = [(GCGenericDeviceDriverModel *)self elements];
  v21 = [elements debugDescription];
  v13 = [v21 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  properties = [(GCGenericDeviceDriverModel *)self properties];
  v19 = [properties debugDescription];
  v4 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  input = [(GCGenericDeviceDriverModel *)self input];
  v14 = [input debugDescription];
  v5 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  motion = [(GCGenericDeviceDriverModel *)self motion];
  v7 = [motion debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  rumble = [(GCGenericDeviceDriverModel *)self rumble];
  v10 = [rumble debugDescription];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v18 = [v17 stringWithFormat:@"<%@ %p> {\n\t elements = %@\n\t properties = %@\n\t input = %@\n\t motion = %@\n\t rumble = %@\n}", v16, self, v13, v4, v5, v8, v11];

  return v18;
}

+ (GCGenericDeviceDriverModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v147[2] = *MEMORY[0x1E69E9840];
  v108 = objc_opt_new();
  v127[0] = 0;
  representationCopy = representation;
  v5 = [representation gc_requiredObjectForKey:@"Elements" ofClass:objc_opt_class() error:v127];
  v6 = v127[0];
  if (!v5)
  {
    if (error)
    {
      v43 = v6;
      v44 = MEMORY[0x1E696ABC0];
      v146[0] = *MEMORY[0x1E696A578];
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v147[0] = v45;
      v146[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v43 localizedFailureReason];
      v147[1] = localizedFailureReason;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:v146 count:2];
      *error = [(NSError *)v44 gc_modelError:v47 userInfo:?];

      build = 0;
      v6 = v43;
    }

    else
    {
      build = 0;
    }

    goto LABEL_45;
  }

  v98 = v6;
  v121 = 0;
  v122 = &v121;
  v123 = 0x3032000000;
  v124 = __Block_byref_object_copy__13;
  v125 = __Block_byref_object_dispose__13;
  v126 = 0;
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __85__GCGenericDeviceDriverModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke;
  v117[3] = &unk_1E8413C58;
  v120 = &v121;
  v9 = v7;
  v118 = v9;
  v10 = v8;
  v119 = v10;
  [v5 gc_enumerateObjectsUsingBlock:v117];
  v11 = [v10 count];
  v12 = [v5 count];
  if (v11 == v12)
  {
    [v108 setElements:v10];
  }

  else if (error)
  {
    v93 = MEMORY[0x1E696ABC0];
    v144[0] = *MEMORY[0x1E696A578];
    localizedDescription = [v122[5] localizedDescription];
    if ([localizedDescription length])
    {
      [v122[5] localizedDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }
    v94 = ;
    v145[0] = v94;
    v144[1] = *MEMORY[0x1E696A588];
    localizedFailureReason2 = [v122[5] localizedFailureReason];
    v14 = localizedFailureReason2;
    v15 = &stru_1F4E1BE30;
    if (localizedFailureReason2)
    {
      v15 = localizedFailureReason2;
    }

    v145[1] = v15;
    v144[2] = *MEMORY[0x1E696AA08];
    v16 = v122[5];
    if (v16)
    {
      v17 = v122[5];
      null = v17;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      v17 = v122[5];
    }

    v92 = null;
    v145[2] = null;
    v144[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath = [v17 gc_failingKeyPath];
    v20 = gc_failingKeyPath;
    if (!gc_failingKeyPath)
    {
      gc_failingKeyPath = MEMORY[0x1E695E0F0];
    }

    v21 = [gc_failingKeyPath arrayByAddingObject:@"Elements"];
    v145[3] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v145 forKeys:v144 count:4];
    *error = [(NSError *)v93 gc_modelError:v22 userInfo:?];

    if (!v16)
    {
    }
  }

  _Block_object_dispose(&v121, 8);
  if (v11 != v12)
  {
    build = 0;
    goto LABEL_46;
  }

  v116 = 0;
  v23 = [representationCopy gc_objectForKey:@"Properties" ofClass:objc_opt_class() error:&v116];
  v24 = v116;
  v25 = v24;
  if (!v23 && v24)
  {
    if (!error)
    {
      v27 = v24;
      goto LABEL_125;
    }

    v48 = MEMORY[0x1E696ABC0];
    v142[0] = *MEMORY[0x1E696A578];
    localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    v143[0] = localizedDescription2;
    v142[1] = *MEMORY[0x1E696A588];
    localizedFailureReason3 = [v25 localizedFailureReason];
    v143[1] = localizedFailureReason3;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v143 forKeys:v142 count:2];
    *error = [(NSError *)v48 gc_modelError:v51 userInfo:?];

    v27 = v25;
    goto LABEL_53;
  }

  if (!v23)
  {
    v27 = v24;
    goto LABEL_26;
  }

  v115 = 0;
  v26 = [GCGenericDeviceDriverPropertiesModel modelWithDictionaryRepresentation:v23 error:&v115];
  v27 = v115;

  if (!v26)
  {
    if (!error)
    {
LABEL_125:

LABEL_132:
      build = 0;
      v6 = v27;
      goto LABEL_45;
    }

    v104 = MEMORY[0x1E696ABC0];
    v140[0] = *MEMORY[0x1E696A578];
    localizedDescription2 = [v27 localizedDescription];
    localizedFailureReason3 = localizedDescription2;
    if (!localizedDescription2)
    {
      localizedFailureReason3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }

    v141[0] = localizedFailureReason3;
    v140[1] = *MEMORY[0x1E696A588];
    localizedFailureReason4 = [v27 localizedFailureReason];
    v65 = localizedFailureReason4;
    if (!localizedFailureReason4)
    {
      localizedFailureReason4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"Input"];
    }

    v99 = localizedFailureReason4;
    v141[1] = localizedFailureReason4;
    v140[2] = *MEMORY[0x1E696AA08];
    null2 = v27;
    if (!v27)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    v141[2] = null2;
    v140[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath2 = [v27 gc_failingKeyPath];
    v68 = gc_failingKeyPath2;
    if (!gc_failingKeyPath2)
    {
      gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
    }

    v69 = [gc_failingKeyPath2 arrayByAddingObject:@"Properties"];
    v141[3] = v69;
    v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v141 forKeys:v140 count:4];
    *error = [(NSError *)v104 gc_modelError:v70 userInfo:?];

    if (!v27)
    {
    }

    if (!v65)
    {
    }

    if (localizedDescription2)
    {
LABEL_78:

      goto LABEL_125;
    }

LABEL_53:

    goto LABEL_78;
  }

  [v108 setProperties:v26];

LABEL_26:
  v114 = 0;
  v29 = [representationCopy gc_objectForKey:@"Input" ofClass:objc_opt_class() error:&v114];
  v30 = v114;
  v31 = v30;
  if (!v29 && v30)
  {
    if (!error)
    {
      v27 = v30;
      goto LABEL_127;
    }

    v52 = MEMORY[0x1E696ABC0];
    v138[0] = *MEMORY[0x1E696A578];
    localizedDescription3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    v139[0] = localizedDescription3;
    v138[1] = *MEMORY[0x1E696A588];
    localizedFailureReason5 = [v31 localizedFailureReason];
    v139[1] = localizedFailureReason5;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v139 forKeys:v138 count:2];
    *error = [(NSError *)v52 gc_modelError:v55 userInfo:?];

    v27 = v31;
    goto LABEL_56;
  }

  if (!v29)
  {
    v27 = v30;
    goto LABEL_32;
  }

  v113 = 0;
  v32 = [GCGenericDeviceInputEventDriverModel modelWithDictionaryRepresentation:v29 error:&v113];
  v27 = v113;

  if (!v32)
  {
    if (!error)
    {
LABEL_127:

      goto LABEL_132;
    }

    v105 = MEMORY[0x1E696ABC0];
    v136[0] = *MEMORY[0x1E696A578];
    localizedDescription3 = [v27 localizedDescription];
    localizedFailureReason5 = localizedDescription3;
    if (!localizedDescription3)
    {
      localizedFailureReason5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }

    v137[0] = localizedFailureReason5;
    v136[1] = *MEMORY[0x1E696A588];
    localizedFailureReason6 = [v27 localizedFailureReason];
    v72 = localizedFailureReason6;
    if (!localizedFailureReason6)
    {
      localizedFailureReason6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"Input"];
    }

    v100 = localizedFailureReason6;
    v137[1] = localizedFailureReason6;
    v136[2] = *MEMORY[0x1E696AA08];
    null3 = v27;
    if (!v27)
    {
      null3 = [MEMORY[0x1E695DFB0] null];
    }

    v137[2] = null3;
    v136[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath3 = [v27 gc_failingKeyPath];
    v75 = gc_failingKeyPath3;
    if (!gc_failingKeyPath3)
    {
      gc_failingKeyPath3 = MEMORY[0x1E695E0F0];
    }

    v76 = [gc_failingKeyPath3 arrayByAddingObject:@"Input"];
    v137[3] = v76;
    v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v137 forKeys:v136 count:4];
    *error = [(NSError *)v105 gc_modelError:v77 userInfo:?];

    if (!v27)
    {
    }

    if (!v72)
    {
    }

    if (localizedDescription3)
    {
LABEL_93:

      goto LABEL_127;
    }

LABEL_56:

    goto LABEL_93;
  }

  [v108 setInput:v32];

LABEL_32:
  v112 = 0;
  v33 = [representationCopy gc_objectForKey:@"Motion" ofClass:objc_opt_class() error:&v112];
  v34 = v112;
  v35 = v34;
  if (!v33 && v34)
  {
    if (!error)
    {
      v27 = v34;
      goto LABEL_129;
    }

    v56 = MEMORY[0x1E696ABC0];
    v134[0] = *MEMORY[0x1E696A578];
    localizedDescription4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    v135[0] = localizedDescription4;
    v134[1] = *MEMORY[0x1E696A588];
    localizedFailureReason7 = [v35 localizedFailureReason];
    v135[1] = localizedFailureReason7;
    v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v135 forKeys:v134 count:2];
    *error = [(NSError *)v56 gc_modelError:v59 userInfo:?];

    v27 = v35;
    goto LABEL_59;
  }

  if (!v33)
  {
    v27 = v34;
    goto LABEL_38;
  }

  v111 = 0;
  v36 = [GCGenericDeviceMotionEventDriverModel modelWithDictionaryRepresentation:v33 error:&v111];
  v27 = v111;

  if (!v36)
  {
    if (!error)
    {
LABEL_129:

      goto LABEL_132;
    }

    v106 = MEMORY[0x1E696ABC0];
    v132[0] = *MEMORY[0x1E696A578];
    localizedDescription4 = [v27 localizedDescription];
    localizedFailureReason7 = localizedDescription4;
    if (!localizedDescription4)
    {
      localizedFailureReason7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }

    v133[0] = localizedFailureReason7;
    v132[1] = *MEMORY[0x1E696A588];
    localizedFailureReason8 = [v27 localizedFailureReason];
    v79 = localizedFailureReason8;
    if (!localizedFailureReason8)
    {
      localizedFailureReason8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"Input"];
    }

    v101 = localizedFailureReason8;
    v133[1] = localizedFailureReason8;
    v132[2] = *MEMORY[0x1E696AA08];
    null4 = v27;
    if (!v27)
    {
      null4 = [MEMORY[0x1E695DFB0] null];
    }

    v133[2] = null4;
    v132[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath4 = [v27 gc_failingKeyPath];
    v82 = gc_failingKeyPath4;
    if (!gc_failingKeyPath4)
    {
      gc_failingKeyPath4 = MEMORY[0x1E695E0F0];
    }

    v83 = [gc_failingKeyPath4 arrayByAddingObject:@"Motion"];
    v133[3] = v83;
    v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v133 forKeys:v132 count:4];
    *error = [(NSError *)v106 gc_modelError:v84 userInfo:?];

    if (!v27)
    {
    }

    if (!v79)
    {
    }

    if (localizedDescription4)
    {
LABEL_108:

      goto LABEL_129;
    }

LABEL_59:

    goto LABEL_108;
  }

  [v108 setMotion:v36];

LABEL_38:
  v110 = 0;
  v37 = [representationCopy gc_objectForKey:@"Rumble" ofClass:objc_opt_class() error:&v110];
  v38 = v110;
  v39 = v38;
  if (!v37 && v38)
  {
    if (!error)
    {
      v27 = v38;
      goto LABEL_131;
    }

    v60 = MEMORY[0x1E696ABC0];
    v130[0] = *MEMORY[0x1E696A578];
    localizedDescription5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    v131[0] = localizedDescription5;
    v130[1] = *MEMORY[0x1E696A588];
    localizedFailureReason9 = [v39 localizedFailureReason];
    v131[1] = localizedFailureReason9;
    v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:v130 count:2];
    *error = [(NSError *)v60 gc_modelError:v63 userInfo:?];

    v27 = v39;
    goto LABEL_62;
  }

  if (!v37)
  {
    v27 = v38;
    goto LABEL_44;
  }

  v109 = 0;
  v40 = [GCGenericDeviceRumbleModel modelWithDictionaryRepresentation:v37 error:&v109];
  v27 = v109;

  if (!v40)
  {
    if (!error)
    {
LABEL_131:

      goto LABEL_132;
    }

    v107 = MEMORY[0x1E696ABC0];
    v128[0] = *MEMORY[0x1E696A578];
    localizedDescription5 = [v27 localizedDescription];
    localizedFailureReason9 = localizedDescription5;
    if (!localizedDescription5)
    {
      localizedFailureReason9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }

    v129[0] = localizedFailureReason9;
    v128[1] = *MEMORY[0x1E696A588];
    localizedFailureReason10 = [v27 localizedFailureReason];
    v86 = localizedFailureReason10;
    if (!localizedFailureReason10)
    {
      localizedFailureReason10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"Input"];
    }

    v102 = localizedFailureReason10;
    v129[1] = localizedFailureReason10;
    v128[2] = *MEMORY[0x1E696AA08];
    null5 = v27;
    if (!v27)
    {
      null5 = [MEMORY[0x1E695DFB0] null];
    }

    v129[2] = null5;
    v128[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath5 = [v27 gc_failingKeyPath];
    v89 = gc_failingKeyPath5;
    if (!gc_failingKeyPath5)
    {
      gc_failingKeyPath5 = MEMORY[0x1E695E0F0];
    }

    v90 = [gc_failingKeyPath5 arrayByAddingObject:@"Input"];
    v129[3] = v90;
    v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:v128 count:4];
    *error = [(NSError *)v107 gc_modelError:v91 userInfo:?];

    if (!v27)
    {
    }

    if (!v86)
    {
    }

    if (localizedDescription5)
    {
LABEL_123:

      goto LABEL_131;
    }

LABEL_62:

    goto LABEL_123;
  }

  [v108 setRumble:v40];

LABEL_44:
  build = [v108 build];
  v6 = v108;
  v108 = 0;
LABEL_45:

LABEL_46:
  v41 = *MEMORY[0x1E69E9840];

  return build;
}

void __85__GCGenericDeviceDriverModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v71[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    v12 = *(*(a1 + 48) + 8);
    v62 = 0;
    v13 = [GCGenericDeviceElementModel modelWithDictionaryRepresentation:v11 error:&v62];
    objc_storeStrong((v12 + 40), v62);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = [v13 identifier];
      v16 = [v14 member:v15];

      if (v16)
      {
        v17 = MEMORY[0x1E696ABC0];
        v65[0] = *MEMORY[0x1E696A588];
        v18 = MEMORY[0x1E696AEC0];
        v60 = v11;
        v19 = a4;
        v20 = objc_opt_class();
        v21 = [v13 identifier];
        v22 = [v18 stringWithFormat:@"Duplicate definition of '%@' with identifier '%@'.", v20, v21];
        v66[0] = v22;
        v65[1] = @"GCFailingKeyPathErrorKey";
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
        v64 = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
        v66[1] = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
        v26 = [(NSError *)v17 gc_modelError:v25 userInfo:?];
        v27 = *(*(a1 + 48) + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = v26;

        *v19 = 1;
        v11 = v60;
      }

      else
      {
        [*(a1 + 40) addObject:v13];
        v29 = *(a1 + 32);
        v30 = [v13 identifier];
        [v29 addObject:v30];
      }
    }

    else
    {
      v58 = MEMORY[0x1E696ABC0];
      v67[0] = *MEMORY[0x1E696A578];
      v40 = [*(*(*(a1 + 48) + 8) + 40) localizedDescription];
      v41 = &stru_1F4E1BE30;
      v61 = v40;
      if (v40)
      {
        v41 = v40;
      }

      v68[0] = v41;
      v67[1] = *MEMORY[0x1E696A588];
      v42 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
      v59 = v42;
      if (!v42)
      {
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model.", objc_opt_class()];
      }

      v43 = a4;
      v57 = v42;
      v68[1] = v42;
      v67[2] = *MEMORY[0x1E696AA08];
      v44 = *(*(*(a1 + 48) + 8) + 40);
      v45 = v44;
      v46 = v44;
      if (!v44)
      {
        v46 = [MEMORY[0x1E695DFB0] null];
        v45 = *(*(*(a1 + 48) + 8) + 40);
      }

      v56 = v46;
      v68[2] = v46;
      v67[3] = @"GCFailingKeyPathErrorKey";
      v47 = [v45 gc_failingKeyPath];
      v48 = v47;
      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = MEMORY[0x1E695E0F0];
      }

      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
      v51 = [v49 arrayByAddingObject:v50];
      v68[3] = v51;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:4];
      v53 = [(NSError *)v58 gc_modelError:v52 userInfo:?];
      v54 = *(*(a1 + 48) + 8);
      v55 = *(v54 + 40);
      *(v54 + 40) = v53;

      if (!v44)
      {
      }

      if (!v59)
      {
      }

      *v43 = 1;
    }
  }

  else
  {
    v32 = MEMORY[0x1E696ABC0];
    v70[0] = *MEMORY[0x1E696A588];
    v33 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
    v71[0] = v33;
    v70[1] = @"GCFailingKeyPathErrorKey";
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v69 = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
    v71[1] = v35;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
    v37 = [(NSError *)v32 gc_modelError:v36 userInfo:?];
    v38 = *(*(a1 + 48) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v37;

    *a4 = 1;
  }

  v31 = *MEMORY[0x1E69E9840];
}

@end