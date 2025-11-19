@interface _GCConfigurationBundle
- (_GCConfigurationBundle)init;
- (_GCConfigurationBundle)initWithPath:(id)a3 error:(id *)a4;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
@end

@implementation _GCConfigurationBundle

- (_GCConfigurationBundle)initWithPath:(id)a3 error:(id *)a4
{
  v117[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_getAssociatedObject(v6, self);

  if (!v7)
  {
    objc_setAssociatedObject(v6, self, self, 0);
    v100.receiver = self;
    v100.super_class = _GCConfigurationBundle;
    v9 = [(_GCConfigurationBundle *)&v100 _initUniqueWithPath:v6];
    objc_setAssociatedObject(v6, v9, 0, 0);
    if (!v9)
    {
      v8 = 0;
      goto LABEL_22;
    }

    v10 = [v9 infoDictionary];
    if (!v10)
    {
      if (!a4)
      {
        goto LABEL_14;
      }

      v46 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A588];
      v116[0] = *MEMORY[0x1E696A578];
      v116[1] = v47;
      v117[0] = @"Invalid bundle.";
      v117[1] = @"Missing information property list.";
      v116[2] = *MEMORY[0x1E696A368];
      v34 = [v9 bundleURL];
      v48 = [v34 path];
      v49 = v48;
      v50 = @"<missing path>";
      if (v48)
      {
        v50 = v48;
      }

      v117[2] = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v117 forKeys:v116 count:3];
      *a4 = [(NSError *)v46 gc_ConfigurationError:v51 userInfo:?];
      goto LABEL_54;
    }

    v95 = a4;
    v99 = 0;
    v11 = [v10 gc_requiredObjectForKey:@"CompatibilityVersion" ofClass:objc_opt_class() error:&v99];
    v12 = v99;
    v13 = v12;
    if (!v11)
    {
      if (a4)
      {
        v52 = MEMORY[0x1E696ABC0];
        v53 = *MEMORY[0x1E696A578];
        v115[0] = @"Invalid bundle information property list.";
        v54 = *MEMORY[0x1E696A588];
        v114[0] = v53;
        v114[1] = v54;
        v55 = [v12 localizedFailureReason];
        v115[1] = v55;
        v114[2] = *MEMORY[0x1E696A368];
        v56 = [v9 bundleURL];
        v57 = [v56 path];
        v58 = v57;
        v59 = @"<missing path>";
        if (v57)
        {
          v59 = v57;
        }

        v115[2] = v59;
        v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:v114 count:3];
        *a4 = [(NSError *)v52 gc_ConfigurationError:v60 userInfo:?];
      }

      goto LABEL_14;
    }

    v14 = v12;
    v15 = [[GCVersion alloc] initWithString:v11];
    if (!v15)
    {
      if (!v95)
      {
        goto LABEL_13;
      }

      v92 = MEMORY[0x1E696ABC0];
      v93 = v10;
      v61 = *MEMORY[0x1E696A578];
      v113[0] = @"Invalid bundle information property list.";
      v62 = *MEMORY[0x1E696A588];
      v112[0] = v61;
      v112[1] = v62;
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' format: '%@'", @"CompatibilityVersion", v11];
      v113[1] = v21;
      v112[2] = *MEMORY[0x1E696A368];
      v22 = [v9 bundleURL];
      v63 = [v22 path];
      v24 = v63;
      v64 = @"<missing path>";
      if (v63)
      {
        v64 = v63;
      }

      v113[2] = v64;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:3];
      v27 = v92;
      v28 = 1;
      goto LABEL_12;
    }

    v16 = +[GCVersion currentSourceVersion];
    v17 = [(GCVersion *)v15 isGreaterThanSourceVersion:v16];

    if (v17)
    {
      if (!v95)
      {
LABEL_13:

LABEL_14:
        v8 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v93 = v10;
      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A578];
      v111[0] = @"Failed to initialize Configuration DB Bundle.";
      v20 = *MEMORY[0x1E696A588];
      v110[0] = v19;
      v110[1] = v20;
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bundle requires framework version '%@'.", v15];
      v111[1] = v21;
      v110[2] = *MEMORY[0x1E696A368];
      v22 = [v9 bundleURL];
      v23 = [v22 path];
      v24 = v23;
      v25 = @"<missing path>";
      if (v23)
      {
        v25 = v23;
      }

      v111[2] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:3];
      v27 = v18;
      v28 = 2;
LABEL_12:
      *v95 = [(NSError *)v27 gc_ConfigurationError:v28 userInfo:v26];

      v10 = v93;
      goto LABEL_13;
    }

    v29 = [(GCVersion *)v15 copy];
    v30 = v9[11];
    v9[11] = v29;

    v31 = *MEMORY[0x1E695E4F0];
    v98 = 0;
    v32 = [v10 gc_requiredObjectForKey:v31 ofClass:objc_opt_class() error:&v98];
    v33 = v98;
    v34 = v33;
    if (v32)
    {

      v35 = *MEMORY[0x1E695E500];
      v97 = 0;
      v36 = [v10 gc_requiredObjectForKey:v35 ofClass:objc_opt_class() error:&v97];
      v37 = v97;
      v34 = v37;
      if (v36)
      {
        v38 = [[GCVersion alloc] initWithString:v36];
        if (!v38)
        {
          v94 = v10;
          if (v95)
          {
            v78 = MEMORY[0x1E696ABC0];
            v79 = *MEMORY[0x1E696A578];
            v105[0] = @"Invalid bundle information property list.";
            v80 = *MEMORY[0x1E696A588];
            v104[0] = v79;
            v104[1] = v80;
            v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid %@.", v36, v35];
            v105[1] = v81;
            v104[2] = *MEMORY[0x1E696A368];
            v82 = [v9 bundleURL];
            v83 = [v82 path];
            v84 = v83;
            v85 = @"<missing path>";
            if (v83)
            {
              v85 = v83;
            }

            v105[2] = v85;
            v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:3];
            *v95 = [(NSError *)v78 gc_ConfigurationError:v86 userInfo:?];
          }

          v8 = 0;
          v10 = v94;
          goto LABEL_21;
        }

        v39 = v9[9];
        v9[9] = v38;

        v96 = 0;
        v40 = [v10 gc_requiredObjectForKey:@"ConfigurationType" ofClass:objc_opt_class() error:&v96];
        v41 = v96;
        v34 = v41;
        if (v40)
        {
          v42 = [v40 copy];
          v43 = v9[10];
          v9[10] = v42;

          v8 = v9;
          goto LABEL_21;
        }

        if (!v95)
        {
          goto LABEL_55;
        }

        v65 = MEMORY[0x1E696ABC0];
        v87 = *MEMORY[0x1E696A578];
        v103[0] = @"Invalid bundle information property list.";
        v88 = *MEMORY[0x1E696A588];
        v102[0] = v87;
        v102[1] = v88;
        v49 = [v41 localizedFailureReason];
        v103[1] = v49;
        v102[2] = *MEMORY[0x1E696A368];
        v51 = [v9 bundleURL];
        v89 = [v51 path];
        v69 = v89;
        v90 = @"<missing path>";
        if (v89)
        {
          v90 = v89;
        }

        v103[2] = v90;
        v71 = MEMORY[0x1E695DF20];
        v72 = v103;
        v73 = v102;
        goto LABEL_53;
      }

      if (v95)
      {
        v65 = MEMORY[0x1E696ABC0];
        v74 = *MEMORY[0x1E696A578];
        v107[0] = @"Invalid bundle information property list.";
        v75 = *MEMORY[0x1E696A588];
        v106[0] = v74;
        v106[1] = v75;
        v49 = [v37 localizedFailureReason];
        v107[1] = v49;
        v106[2] = *MEMORY[0x1E696A368];
        v51 = [v9 bundleURL];
        v76 = [v51 path];
        v69 = v76;
        v77 = @"<missing path>";
        if (v76)
        {
          v77 = v76;
        }

        v107[2] = v77;
        v71 = MEMORY[0x1E695DF20];
        v72 = v107;
        v73 = v106;
LABEL_53:
        v91 = [v71 dictionaryWithObjects:v72 forKeys:v73 count:3];
        *v95 = [(NSError *)v65 gc_ConfigurationError:v91 userInfo:?];

LABEL_54:
      }
    }

    else if (v95)
    {
      v65 = MEMORY[0x1E696ABC0];
      v66 = *MEMORY[0x1E696A578];
      v109[0] = @"Invalid bundle information property list.";
      v67 = *MEMORY[0x1E696A588];
      v108[0] = v66;
      v108[1] = v67;
      v49 = [v33 localizedFailureReason];
      v109[1] = v49;
      v108[2] = *MEMORY[0x1E696A368];
      v51 = [v9 bundleURL];
      v68 = [v51 path];
      v69 = v68;
      v70 = @"<missing path>";
      if (v68)
      {
        v70 = v68;
      }

      v109[2] = v70;
      v71 = MEMORY[0x1E695DF20];
      v72 = v109;
      v73 = v108;
      goto LABEL_53;
    }

LABEL_55:

    goto LABEL_14;
  }

  v101.receiver = self;
  v101.super_class = _GCConfigurationBundle;
  v8 = [(_GCConfigurationBundle *)&v101 initWithPath:v6];
LABEL_22:

  v44 = *MEMORY[0x1E69E9840];
  return v8;
}

- (_GCConfigurationBundle)init
{
  [(_GCConfigurationBundle *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_GCConfigurationBundle *)self identifier];
  v5 = [(_GCConfigurationBundle *)self version];
  v6 = [v3 stringWithFormat:@"%@ (v%@)", v4, v5];

  return v6;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_GCConfigurationBundle *)self identifier];
  v5 = [(_GCConfigurationBundle *)self version];
  v6 = [v3 stringWithFormat:@"%@ (v%@)", v4, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_GCConfigurationBundle *)self identifier];
  v7 = [(_GCConfigurationBundle *)self version];
  v8 = [v3 stringWithFormat:@"<%@ %p> %@ (v%@)", v5, self, v6, v7];

  return v8;
}

@end