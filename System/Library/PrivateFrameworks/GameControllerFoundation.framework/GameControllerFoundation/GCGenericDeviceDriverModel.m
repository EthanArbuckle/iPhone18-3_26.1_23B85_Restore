@interface GCGenericDeviceDriverModel
+ (GCGenericDeviceDriverModel)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceDriverModel)init;
- (GCGenericDeviceDriverModel)initWithCoder:(id)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceDriverModel

- (GCGenericDeviceDriverModel)init
{
  [(GCGenericDeviceDriverModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceDriverModel)initWithCoder:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = GCGenericDeviceDriverModel;
  v3 = a3;
  v4 = [(GCGenericDeviceDriverModel *)&v20 init];
  v5 = MEMORY[0x1E695DFD8];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"elements"];
  elements = v4->_elements;
  v4->_elements = v8;

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"properties"];
  properties = v4->_properties;
  v4->_properties = v10;

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"input"];
  input = v4->_input;
  v4->_input = v12;

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"motion"];
  motion = v4->_motion;
  v4->_motion = v14;

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"rumble"];

  rumble = v4->_rumble;
  v4->_rumble = v16;

  v18 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GCGenericDeviceDriverModel *)self elements];
  [v4 encodeObject:v5 forKey:@"elements"];

  v6 = [(GCGenericDeviceDriverModel *)self properties];
  [v4 encodeObject:v6 forKey:@"properties"];

  v7 = [(GCGenericDeviceDriverModel *)self input];
  [v4 encodeObject:v7 forKey:@"input"];

  v8 = [(GCGenericDeviceDriverModel *)self motion];
  [v4 encodeObject:v8 forKey:@"motion"];

  v9 = [(GCGenericDeviceDriverModel *)self rumble];
  [v4 encodeObject:v9 forKey:@"rumble"];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceDriverModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_10;
    }

LABEL_6:
    v5 = [(GCGenericDeviceDriverModel *)self elements];
    v6 = [v4 elements];
    if (![v5 isEqual:v6])
    {
      v10 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v7 = [(GCGenericDeviceDriverModel *)self properties];
    v8 = [v4 properties];
    if (v7 != v8)
    {
      v9 = [(GCGenericDeviceDriverModel *)self properties];
      v36 = [v4 properties];
      v37 = v9;
      if (![v9 isEqual:?])
      {
        v10 = 0;
        goto LABEL_28;
      }
    }

    v11 = [(GCGenericDeviceDriverModel *)self input];
    v12 = [v4 input];
    if (v11 != v12)
    {
      v13 = [(GCGenericDeviceDriverModel *)self input];
      v33 = [v4 input];
      v34 = v13;
      if (![v13 isEqual:v33])
      {
        v10 = 0;
LABEL_26:

LABEL_27:
        if (v7 == v8)
        {
LABEL_29:

          goto LABEL_30;
        }

LABEL_28:

        goto LABEL_29;
      }
    }

    v14 = [(GCGenericDeviceDriverModel *)self motion];
    v15 = [v4 motion];
    v35 = v14;
    v16 = v14 == v15;
    v17 = v15;
    if (v16)
    {
      v31 = v12;
      v32 = v11;
    }

    else
    {
      v18 = [(GCGenericDeviceDriverModel *)self motion];
      v28 = [v4 motion];
      v29 = v18;
      if (![v18 isEqual:?])
      {
        v10 = 0;
        v26 = v35;
        goto LABEL_24;
      }

      v31 = v12;
      v32 = v11;
    }

    v30 = v17;
    v19 = [(GCGenericDeviceDriverModel *)self rumble];
    v20 = [v4 rumble];
    v21 = v20;
    if (v19 == v20)
    {

      v10 = 1;
    }

    else
    {
      v22 = [(GCGenericDeviceDriverModel *)self rumble];
      [v4 rumble];
      v23 = v8;
      v25 = v24 = v7;
      v10 = [v22 isEqual:v25];

      v7 = v24;
      v8 = v23;
    }

    v26 = v35;
    v17 = v30;
    v12 = v31;
    v11 = v32;
    if (v35 == v30)
    {
LABEL_25:

      if (v11 == v12)
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
  v22 = [(GCGenericDeviceDriverModel *)self elements];
  v21 = [v22 debugDescription];
  v13 = [v21 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v20 = [(GCGenericDeviceDriverModel *)self properties];
  v19 = [v20 debugDescription];
  v4 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v15 = [(GCGenericDeviceDriverModel *)self input];
  v14 = [v15 debugDescription];
  v5 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v6 = [(GCGenericDeviceDriverModel *)self motion];
  v7 = [v6 debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v9 = [(GCGenericDeviceDriverModel *)self rumble];
  v10 = [v9 debugDescription];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v18 = [v17 stringWithFormat:@"<%@ %p> {\n\t elements = %@\n\t properties = %@\n\t input = %@\n\t motion = %@\n\t rumble = %@\n}", v16, self, v13, v4, v5, v8, v11];

  return v18;
}

+ (GCGenericDeviceDriverModel)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v147[2] = *MEMORY[0x1E69E9840];
  v108 = objc_opt_new();
  v127[0] = 0;
  v103 = a3;
  v5 = [a3 gc_requiredObjectForKey:@"Elements" ofClass:objc_opt_class() error:v127];
  v6 = v127[0];
  if (!v5)
  {
    if (a4)
    {
      v43 = v6;
      v44 = MEMORY[0x1E696ABC0];
      v146[0] = *MEMORY[0x1E696A578];
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v147[0] = v45;
      v146[1] = *MEMORY[0x1E696A588];
      v46 = [v43 localizedFailureReason];
      v147[1] = v46;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:v146 count:2];
      *a4 = [(NSError *)v44 gc_modelError:v47 userInfo:?];

      v28 = 0;
      v6 = v43;
    }

    else
    {
      v28 = 0;
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

  else if (a4)
  {
    v93 = MEMORY[0x1E696ABC0];
    v144[0] = *MEMORY[0x1E696A578];
    v95 = [v122[5] localizedDescription];
    if ([v95 length])
    {
      [v122[5] localizedDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
    }
    v94 = ;
    v145[0] = v94;
    v144[1] = *MEMORY[0x1E696A588];
    v13 = [v122[5] localizedFailureReason];
    v14 = v13;
    v15 = &stru_1F4E1BE30;
    if (v13)
    {
      v15 = v13;
    }

    v145[1] = v15;
    v144[2] = *MEMORY[0x1E696AA08];
    v16 = v122[5];
    if (v16)
    {
      v17 = v122[5];
      v18 = v17;
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      v17 = v122[5];
    }

    v92 = v18;
    v145[2] = v18;
    v144[3] = @"GCFailingKeyPathErrorKey";
    v19 = [v17 gc_failingKeyPath];
    v20 = v19;
    if (!v19)
    {
      v19 = MEMORY[0x1E695E0F0];
    }

    v21 = [v19 arrayByAddingObject:@"Elements"];
    v145[3] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v145 forKeys:v144 count:4];
    *a4 = [(NSError *)v93 gc_modelError:v22 userInfo:?];

    if (!v16)
    {
    }
  }

  _Block_object_dispose(&v121, 8);
  if (v11 != v12)
  {
    v28 = 0;
    goto LABEL_46;
  }

  v116 = 0;
  v23 = [v103 gc_objectForKey:@"Properties" ofClass:objc_opt_class() error:&v116];
  v24 = v116;
  v25 = v24;
  if (!v23 && v24)
  {
    if (!a4)
    {
      v27 = v24;
      goto LABEL_125;
    }

    v48 = MEMORY[0x1E696ABC0];
    v142[0] = *MEMORY[0x1E696A578];
    v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
    v143[0] = v49;
    v142[1] = *MEMORY[0x1E696A588];
    v50 = [v25 localizedFailureReason];
    v143[1] = v50;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v143 forKeys:v142 count:2];
    *a4 = [(NSError *)v48 gc_modelError:v51 userInfo:?];

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
    if (!a4)
    {
LABEL_125:

LABEL_132:
      v28 = 0;
      v6 = v27;
      goto LABEL_45;
    }

    v104 = MEMORY[0x1E696ABC0];
    v140[0] = *MEMORY[0x1E696A578];
    v49 = [v27 localizedDescription];
    v50 = v49;
    if (!v49)
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
    }

    v141[0] = v50;
    v140[1] = *MEMORY[0x1E696A588];
    v64 = [v27 localizedFailureReason];
    v65 = v64;
    if (!v64)
    {
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"Input"];
    }

    v99 = v64;
    v141[1] = v64;
    v140[2] = *MEMORY[0x1E696AA08];
    v66 = v27;
    if (!v27)
    {
      v66 = [MEMORY[0x1E695DFB0] null];
    }

    v141[2] = v66;
    v140[3] = @"GCFailingKeyPathErrorKey";
    v67 = [v27 gc_failingKeyPath];
    v68 = v67;
    if (!v67)
    {
      v67 = MEMORY[0x1E695E0F0];
    }

    v69 = [v67 arrayByAddingObject:@"Properties"];
    v141[3] = v69;
    v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v141 forKeys:v140 count:4];
    *a4 = [(NSError *)v104 gc_modelError:v70 userInfo:?];

    if (!v27)
    {
    }

    if (!v65)
    {
    }

    if (v49)
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
  v29 = [v103 gc_objectForKey:@"Input" ofClass:objc_opt_class() error:&v114];
  v30 = v114;
  v31 = v30;
  if (!v29 && v30)
  {
    if (!a4)
    {
      v27 = v30;
      goto LABEL_127;
    }

    v52 = MEMORY[0x1E696ABC0];
    v138[0] = *MEMORY[0x1E696A578];
    v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
    v139[0] = v53;
    v138[1] = *MEMORY[0x1E696A588];
    v54 = [v31 localizedFailureReason];
    v139[1] = v54;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v139 forKeys:v138 count:2];
    *a4 = [(NSError *)v52 gc_modelError:v55 userInfo:?];

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
    if (!a4)
    {
LABEL_127:

      goto LABEL_132;
    }

    v105 = MEMORY[0x1E696ABC0];
    v136[0] = *MEMORY[0x1E696A578];
    v53 = [v27 localizedDescription];
    v54 = v53;
    if (!v53)
    {
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
    }

    v137[0] = v54;
    v136[1] = *MEMORY[0x1E696A588];
    v71 = [v27 localizedFailureReason];
    v72 = v71;
    if (!v71)
    {
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"Input"];
    }

    v100 = v71;
    v137[1] = v71;
    v136[2] = *MEMORY[0x1E696AA08];
    v73 = v27;
    if (!v27)
    {
      v73 = [MEMORY[0x1E695DFB0] null];
    }

    v137[2] = v73;
    v136[3] = @"GCFailingKeyPathErrorKey";
    v74 = [v27 gc_failingKeyPath];
    v75 = v74;
    if (!v74)
    {
      v74 = MEMORY[0x1E695E0F0];
    }

    v76 = [v74 arrayByAddingObject:@"Input"];
    v137[3] = v76;
    v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v137 forKeys:v136 count:4];
    *a4 = [(NSError *)v105 gc_modelError:v77 userInfo:?];

    if (!v27)
    {
    }

    if (!v72)
    {
    }

    if (v53)
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
  v33 = [v103 gc_objectForKey:@"Motion" ofClass:objc_opt_class() error:&v112];
  v34 = v112;
  v35 = v34;
  if (!v33 && v34)
  {
    if (!a4)
    {
      v27 = v34;
      goto LABEL_129;
    }

    v56 = MEMORY[0x1E696ABC0];
    v134[0] = *MEMORY[0x1E696A578];
    v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
    v135[0] = v57;
    v134[1] = *MEMORY[0x1E696A588];
    v58 = [v35 localizedFailureReason];
    v135[1] = v58;
    v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v135 forKeys:v134 count:2];
    *a4 = [(NSError *)v56 gc_modelError:v59 userInfo:?];

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
    if (!a4)
    {
LABEL_129:

      goto LABEL_132;
    }

    v106 = MEMORY[0x1E696ABC0];
    v132[0] = *MEMORY[0x1E696A578];
    v57 = [v27 localizedDescription];
    v58 = v57;
    if (!v57)
    {
      v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
    }

    v133[0] = v58;
    v132[1] = *MEMORY[0x1E696A588];
    v78 = [v27 localizedFailureReason];
    v79 = v78;
    if (!v78)
    {
      v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"Input"];
    }

    v101 = v78;
    v133[1] = v78;
    v132[2] = *MEMORY[0x1E696AA08];
    v80 = v27;
    if (!v27)
    {
      v80 = [MEMORY[0x1E695DFB0] null];
    }

    v133[2] = v80;
    v132[3] = @"GCFailingKeyPathErrorKey";
    v81 = [v27 gc_failingKeyPath];
    v82 = v81;
    if (!v81)
    {
      v81 = MEMORY[0x1E695E0F0];
    }

    v83 = [v81 arrayByAddingObject:@"Motion"];
    v133[3] = v83;
    v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v133 forKeys:v132 count:4];
    *a4 = [(NSError *)v106 gc_modelError:v84 userInfo:?];

    if (!v27)
    {
    }

    if (!v79)
    {
    }

    if (v57)
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
  v37 = [v103 gc_objectForKey:@"Rumble" ofClass:objc_opt_class() error:&v110];
  v38 = v110;
  v39 = v38;
  if (!v37 && v38)
  {
    if (!a4)
    {
      v27 = v38;
      goto LABEL_131;
    }

    v60 = MEMORY[0x1E696ABC0];
    v130[0] = *MEMORY[0x1E696A578];
    v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
    v131[0] = v61;
    v130[1] = *MEMORY[0x1E696A588];
    v62 = [v39 localizedFailureReason];
    v131[1] = v62;
    v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:v130 count:2];
    *a4 = [(NSError *)v60 gc_modelError:v63 userInfo:?];

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
    if (!a4)
    {
LABEL_131:

      goto LABEL_132;
    }

    v107 = MEMORY[0x1E696ABC0];
    v128[0] = *MEMORY[0x1E696A578];
    v61 = [v27 localizedDescription];
    v62 = v61;
    if (!v61)
    {
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
    }

    v129[0] = v62;
    v128[1] = *MEMORY[0x1E696A588];
    v85 = [v27 localizedFailureReason];
    v86 = v85;
    if (!v85)
    {
      v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"Input"];
    }

    v102 = v85;
    v129[1] = v85;
    v128[2] = *MEMORY[0x1E696AA08];
    v87 = v27;
    if (!v27)
    {
      v87 = [MEMORY[0x1E695DFB0] null];
    }

    v129[2] = v87;
    v128[3] = @"GCFailingKeyPathErrorKey";
    v88 = [v27 gc_failingKeyPath];
    v89 = v88;
    if (!v88)
    {
      v88 = MEMORY[0x1E695E0F0];
    }

    v90 = [v88 arrayByAddingObject:@"Input"];
    v129[3] = v90;
    v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:v128 count:4];
    *a4 = [(NSError *)v107 gc_modelError:v91 userInfo:?];

    if (!v27)
    {
    }

    if (!v86)
    {
    }

    if (v61)
    {
LABEL_123:

      goto LABEL_131;
    }

LABEL_62:

    goto LABEL_123;
  }

  [v108 setRumble:v40];

LABEL_44:
  v28 = [v108 build];
  v6 = v108;
  v108 = 0;
LABEL_45:

LABEL_46:
  v41 = *MEMORY[0x1E69E9840];

  return v28;
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