@interface PTPDevicePropDescDataset
- (NSMutableData)content;
- (PTPDevicePropDescDataset)init;
- (PTPDevicePropDescDataset)initWithData:(id)a3;
- (PTPDevicePropDescDataset)initWithMutableData:(id)a3;
- (id)description;
- (void)setContent:(id)a3;
- (void)setCurrentValue:(id)a3;
- (void)setFactoryDefaultValue:(id)a3;
- (void)setMaximumValue:(id)a3;
- (void)setMinimumValue:(id)a3;
- (void)setStepSize:(id)a3;
- (void)setSupportedValues:(id)a3;
- (void)updateContent;
@end

@implementation PTPDevicePropDescDataset

- (PTPDevicePropDescDataset)init
{
  v6.receiver = self;
  v6.super_class = PTPDevicePropDescDataset;
  v2 = [(PTPDevicePropDescDataset *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x29EDB8DF8]) initWithCapacity:0];
    content = v2->_content;
    v2->_content = v3;

    *&v2->_dirty = 1;
  }

  return v2;
}

- (void)setContent:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_content, a3);
  v6 = [(NSMutableData *)self->_content bytes];
  v7 = [(NSMutableData *)self->_content length];
  v181 = v6;
  self->_devicePropertyCode = ReadUInt16MaxSize(&v181, &v6[v7]);
  UInt16MaxSize = ReadUInt16MaxSize(&v181, &v6[v7]);
  self->_dataTypeCode = UInt16MaxSize;
  v9 = v181 + 1;
  self->_readWriteAttribute = *v181;
  v181 = v9;
  if (UInt16MaxSize <= 5)
  {
    if (UInt16MaxSize <= 2)
    {
      if (UInt16MaxSize == 1)
      {
        v55 = objc_alloc(MEMORY[0x29EDBA070]);
        v56 = [v55 initWithChar:*v181];
        factoryDefaultValue = self->_factoryDefaultValue;
        self->_factoryDefaultValue = v56;

        ++v181;
        v58 = objc_alloc(MEMORY[0x29EDBA070]);
        v59 = [v58 initWithChar:*v181];
        currentValue = self->_currentValue;
        self->_currentValue = v59;

        v61 = v181++;
        v62 = *v181;
        self->_formFlag = v62;
        v181 = v61 + 2;
        if (v62 == 2)
        {
          v131 = ReadUInt16MaxSize(&v181, &v6[v7]);
          self->_numberOfValues = v131;
          if (v131)
          {
            v132 = 0;
            v133 = v181;
            do
            {
              supportedValues = self->_supportedValues;
              v135 = [MEMORY[0x29EDBA070] numberWithChar:*v133];
              [(NSMutableArray *)supportedValues addObject:v135];

              v133 = ++v181;
              ++v132;
            }

            while (v132 < self->_numberOfValues);
          }

          goto LABEL_51;
        }

        if (v62 != 1)
        {
          goto LABEL_51;
        }

        v63 = objc_alloc(MEMORY[0x29EDBA070]);
        v64 = [v63 initWithChar:*v181];
        minimumValue = self->_minimumValue;
        self->_minimumValue = v64;

        ++v181;
        v66 = objc_alloc(MEMORY[0x29EDBA070]);
        v67 = [v66 initWithChar:*v181];
        maximumValue = self->_maximumValue;
        self->_maximumValue = v67;

        ++v181;
        v69 = objc_alloc(MEMORY[0x29EDBA070]);
        v30 = [v69 initWithChar:*v181];
      }

      else
      {
        if (UInt16MaxSize != 2)
        {
          goto LABEL_51;
        }

        v40 = objc_alloc(MEMORY[0x29EDBA070]);
        v41 = [v40 initWithUnsignedChar:*v181];
        v42 = self->_factoryDefaultValue;
        self->_factoryDefaultValue = v41;

        ++v181;
        v43 = objc_alloc(MEMORY[0x29EDBA070]);
        v44 = [v43 initWithUnsignedChar:*v181];
        v45 = self->_currentValue;
        self->_currentValue = v44;

        v46 = v181++;
        v47 = *v181;
        self->_formFlag = v47;
        v181 = v46 + 2;
        if (v47 == 2)
        {
          v136 = ReadUInt16MaxSize(&v181, &v6[v7]);
          self->_numberOfValues = v136;
          if (v136)
          {
            v137 = 0;
            v138 = v181;
            do
            {
              v139 = self->_supportedValues;
              v140 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*v138];
              [(NSMutableArray *)v139 addObject:v140];

              v138 = ++v181;
              ++v137;
            }

            while (v137 < self->_numberOfValues);
          }

          goto LABEL_51;
        }

        if (v47 != 1)
        {
          goto LABEL_51;
        }

        v48 = objc_alloc(MEMORY[0x29EDBA070]);
        v49 = [v48 initWithUnsignedChar:*v181];
        v50 = self->_minimumValue;
        self->_minimumValue = v49;

        ++v181;
        v51 = objc_alloc(MEMORY[0x29EDBA070]);
        v52 = [v51 initWithUnsignedChar:*v181];
        v53 = self->_maximumValue;
        self->_maximumValue = v52;

        ++v181;
        v54 = objc_alloc(MEMORY[0x29EDBA070]);
        v30 = [v54 initWithUnsignedChar:*v181];
      }
    }

    else
    {
      if (UInt16MaxSize == 3)
      {
        v100 = [objc_alloc(MEMORY[0x29EDBA070]) initWithShort:{ReadSInt16MaxSize(&v181, &v6[v7])}];
        v101 = self->_factoryDefaultValue;
        self->_factoryDefaultValue = v100;

        v102 = [objc_alloc(MEMORY[0x29EDBA070]) initWithShort:{ReadSInt16MaxSize(&v181, &v6[v7])}];
        v103 = self->_currentValue;
        self->_currentValue = v102;

        v105 = v181 + 1;
        v104 = *v181;
        self->_formFlag = v104;
        v181 = v105;
        if (v104 == 2)
        {
          v161 = ReadUInt16MaxSize(&v181, &v6[v7]);
          self->_numberOfValues = v161;
          if (v161)
          {
            v162 = 0;
            do
            {
              SInt16MaxSize = ReadSInt16MaxSize(&v181, &v6[v7]);
              v164 = self->_supportedValues;
              v165 = [MEMORY[0x29EDBA070] numberWithShort:SInt16MaxSize];
              [(NSMutableArray *)v164 addObject:v165];

              ++v162;
            }

            while (v162 < self->_numberOfValues);
          }
        }

        else if (v104 == 1)
        {
          v106 = [objc_alloc(MEMORY[0x29EDBA070]) initWithShort:{ReadSInt16MaxSize(&v181, &v6[v7])}];
          v107 = self->_minimumValue;
          self->_minimumValue = v106;

          v108 = [objc_alloc(MEMORY[0x29EDBA070]) initWithShort:{ReadSInt16MaxSize(&v181, &v6[v7])}];
          v109 = self->_maximumValue;
          self->_maximumValue = v108;

          v30 = [objc_alloc(MEMORY[0x29EDBA070]) initWithShort:{ReadSInt16MaxSize(&v181, &v6[v7])}];
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      if (UInt16MaxSize == 4)
      {
        v70 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedShort:{ReadUInt16MaxSize(&v181, &v6[v7])}];
        v71 = self->_factoryDefaultValue;
        self->_factoryDefaultValue = v70;

        v72 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedShort:{ReadUInt16MaxSize(&v181, &v6[v7])}];
        v73 = self->_currentValue;
        self->_currentValue = v72;

        v75 = v181 + 1;
        v74 = *v181;
        self->_formFlag = v74;
        v181 = v75;
        if (v74 == 2)
        {
          v141 = ReadUInt16MaxSize(&v181, &v6[v7]);
          self->_numberOfValues = v141;
          if (v141)
          {
            v142 = 0;
            do
            {
              v143 = ReadUInt16MaxSize(&v181, &v6[v7]);
              v144 = self->_supportedValues;
              v145 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:v143];
              [(NSMutableArray *)v144 addObject:v145];

              ++v142;
            }

            while (v142 < self->_numberOfValues);
          }

          goto LABEL_51;
        }

        if (v74 != 1)
        {
          goto LABEL_51;
        }

        v76 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedShort:{ReadUInt16MaxSize(&v181, &v6[v7])}];
        v77 = self->_minimumValue;
        self->_minimumValue = v76;

        v78 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedShort:{ReadUInt16MaxSize(&v181, &v6[v7])}];
        v79 = self->_maximumValue;
        self->_maximumValue = v78;

        v30 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedShort:{ReadUInt16MaxSize(&v181, &v6[v7])}];
      }

      else
      {
        v20 = [objc_alloc(MEMORY[0x29EDBA070]) initWithInt:{ReadSInt32MaxSize(&v181, &v6[v7])}];
        v21 = self->_factoryDefaultValue;
        self->_factoryDefaultValue = v20;

        v22 = [objc_alloc(MEMORY[0x29EDBA070]) initWithInt:{ReadSInt32MaxSize(&v181, &v6[v7])}];
        v23 = self->_currentValue;
        self->_currentValue = v22;

        v25 = v181 + 1;
        v24 = *v181;
        self->_formFlag = v24;
        v181 = v25;
        if (v24 == 2)
        {
          v156 = ReadUInt16MaxSize(&v181, &v6[v7]);
          self->_numberOfValues = v156;
          if (v156)
          {
            v157 = 0;
            do
            {
              SInt32MaxSize = ReadSInt32MaxSize(&v181, &v6[v7]);
              v159 = self->_supportedValues;
              v160 = [MEMORY[0x29EDBA070] numberWithInt:SInt32MaxSize];
              [(NSMutableArray *)v159 addObject:v160];

              ++v157;
            }

            while (v157 < self->_numberOfValues);
          }

          goto LABEL_51;
        }

        if (v24 != 1)
        {
          goto LABEL_51;
        }

        v26 = [objc_alloc(MEMORY[0x29EDBA070]) initWithInt:{ReadSInt32MaxSize(&v181, &v6[v7])}];
        v27 = self->_minimumValue;
        self->_minimumValue = v26;

        v28 = [objc_alloc(MEMORY[0x29EDBA070]) initWithInt:{ReadSInt32MaxSize(&v181, &v6[v7])}];
        v29 = self->_maximumValue;
        self->_maximumValue = v28;

        v30 = [objc_alloc(MEMORY[0x29EDBA070]) initWithInt:{ReadSInt32MaxSize(&v181, &v6[v7])}];
      }
    }

LABEL_50:
    stepSize = self->_stepSize;
    self->_stepSize = v30;

    goto LABEL_51;
  }

  if (UInt16MaxSize <= 8)
  {
    if (UInt16MaxSize == 6)
    {
      v110 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedInt:{ReadUInt32MaxSize(&v181, &v6[v7])}];
      v111 = self->_factoryDefaultValue;
      self->_factoryDefaultValue = v110;

      v112 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedInt:{ReadUInt32MaxSize(&v181, &v6[v7])}];
      v113 = self->_currentValue;
      self->_currentValue = v112;

      v115 = v181 + 1;
      v114 = *v181;
      self->_formFlag = v114;
      v181 = v115;
      if (v114 == 2)
      {
        v171 = ReadUInt16MaxSize(&v181, &v6[v7]);
        self->_numberOfValues = v171;
        if (v171)
        {
          v172 = 0;
          do
          {
            UInt32MaxSize = ReadUInt32MaxSize(&v181, &v6[v7]);
            v174 = self->_supportedValues;
            v175 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:UInt32MaxSize];
            [(NSMutableArray *)v174 addObject:v175];

            ++v172;
          }

          while (v172 < self->_numberOfValues);
        }
      }

      else if (v114 == 1)
      {
        v116 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedInt:{ReadUInt32MaxSize(&v181, &v6[v7])}];
        v117 = self->_minimumValue;
        self->_minimumValue = v116;

        v118 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedInt:{ReadUInt32MaxSize(&v181, &v6[v7])}];
        v119 = self->_maximumValue;
        self->_maximumValue = v118;

        v30 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedInt:{ReadUInt32MaxSize(&v181, &v6[v7])}];
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (UInt16MaxSize != 7)
    {
      v10 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedLongLong:{ReadUInt64MaxSize(&v181, &v6[v7])}];
      v11 = self->_factoryDefaultValue;
      self->_factoryDefaultValue = v10;

      v12 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedLongLong:{ReadUInt64MaxSize(&v181, &v6[v7])}];
      v13 = self->_currentValue;
      self->_currentValue = v12;

      v15 = v181 + 1;
      v14 = *v181;
      self->_formFlag = v14;
      v181 = v15;
      if (v14 == 2)
      {
        v166 = ReadUInt16MaxSize(&v181, &v6[v7]);
        self->_numberOfValues = v166;
        if (v166)
        {
          v167 = 0;
          do
          {
            UInt64MaxSize = ReadUInt64MaxSize(&v181, &v6[v7]);
            v169 = self->_supportedValues;
            v170 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:UInt64MaxSize];
            [(NSMutableArray *)v169 addObject:v170];

            ++v167;
          }

          while (v167 < self->_numberOfValues);
        }
      }

      else if (v14 == 1)
      {
        v16 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedLongLong:{ReadUInt64MaxSize(&v181, &v6[v7])}];
        v17 = self->_minimumValue;
        self->_minimumValue = v16;

        v18 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedLongLong:{ReadUInt64MaxSize(&v181, &v6[v7])}];
        v19 = self->_maximumValue;
        self->_maximumValue = v18;

LABEL_39:
        v30 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedLongLong:{ReadUInt64MaxSize(&v181, &v6[v7])}];
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    v80 = [objc_alloc(MEMORY[0x29EDBA070]) initWithLongLong:{ReadSInt64MaxSize(&v181, &v6[v7])}];
    v81 = self->_factoryDefaultValue;
    self->_factoryDefaultValue = v80;

    v82 = [objc_alloc(MEMORY[0x29EDBA070]) initWithLongLong:{ReadSInt64MaxSize(&v181, &v6[v7])}];
    v83 = self->_currentValue;
    self->_currentValue = v82;

    v85 = v181 + 1;
    v84 = *v181;
    self->_formFlag = v84;
    v181 = v85;
    if (v84 == 2)
    {
      v146 = ReadUInt16MaxSize(&v181, &v6[v7]);
      self->_numberOfValues = v146;
      if (v146)
      {
        v147 = 0;
        do
        {
          SInt64MaxSize = ReadSInt64MaxSize(&v181, &v6[v7]);
          v149 = self->_supportedValues;
          v150 = [MEMORY[0x29EDBA070] numberWithLongLong:SInt64MaxSize];
          [(NSMutableArray *)v149 addObject:v150];

          ++v147;
        }

        while (v147 < self->_numberOfValues);
      }

      goto LABEL_51;
    }

    if (v84 != 1)
    {
      goto LABEL_51;
    }

    v86 = [objc_alloc(MEMORY[0x29EDBA070]) initWithLongLong:{ReadSInt64MaxSize(&v181, &v6[v7])}];
    v87 = self->_minimumValue;
    self->_minimumValue = v86;

    v88 = [objc_alloc(MEMORY[0x29EDBA070]) initWithLongLong:{ReadSInt64MaxSize(&v181, &v6[v7])}];
    v89 = self->_maximumValue;
    self->_maximumValue = v88;

LABEL_49:
    v30 = [objc_alloc(MEMORY[0x29EDBA070]) initWithLongLong:{ReadSInt64MaxSize(&v181, &v6[v7])}];
    goto LABEL_50;
  }

  switch(UInt16MaxSize)
  {
    case 9:
      ReadSInt64MaxSize(&v181, &v6[v7]);
      v120 = [objc_alloc(MEMORY[0x29EDBA070]) initWithLongLong:{ReadSInt64MaxSize(&v181, &v6[v7])}];
      v121 = self->_factoryDefaultValue;
      self->_factoryDefaultValue = v120;

      ReadSInt64MaxSize(&v181, &v6[v7]);
      v122 = [objc_alloc(MEMORY[0x29EDBA070]) initWithLongLong:{ReadSInt64MaxSize(&v181, &v6[v7])}];
      v123 = self->_currentValue;
      self->_currentValue = v122;

      v125 = v181 + 1;
      v124 = *v181;
      self->_formFlag = v124;
      v181 = v125;
      if (v124 == 2)
      {
        v176 = ReadUInt16MaxSize(&v181, &v6[v7]);
        self->_numberOfValues = v176;
        if (v176)
        {
          v177 = 0;
          do
          {
            ReadSInt64MaxSize(&v181, &v6[v7]);
            v178 = ReadSInt64MaxSize(&v181, &v6[v7]);
            v179 = self->_supportedValues;
            v180 = [MEMORY[0x29EDBA070] numberWithLongLong:v178];
            [(NSMutableArray *)v179 addObject:v180];

            ++v177;
          }

          while (v177 < self->_numberOfValues);
        }

        break;
      }

      if (v124 != 1)
      {
        break;
      }

      ReadSInt64MaxSize(&v181, &v6[v7]);
      v126 = [objc_alloc(MEMORY[0x29EDBA070]) initWithLongLong:{ReadSInt64MaxSize(&v181, &v6[v7])}];
      v127 = self->_minimumValue;
      self->_minimumValue = v126;

      ReadSInt64MaxSize(&v181, &v6[v7]);
      v128 = [objc_alloc(MEMORY[0x29EDBA070]) initWithLongLong:{ReadSInt64MaxSize(&v181, &v6[v7])}];
      v129 = self->_maximumValue;
      self->_maximumValue = v128;

      ReadSInt64MaxSize(&v181, &v6[v7]);
      goto LABEL_49;
    case 0xA:
      ReadUInt64MaxSize(&v181, &v6[v7]);
      v90 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedLongLong:{ReadUInt64MaxSize(&v181, &v6[v7])}];
      v91 = self->_factoryDefaultValue;
      self->_factoryDefaultValue = v90;

      ReadUInt64MaxSize(&v181, &v6[v7]);
      v92 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedLongLong:{ReadUInt64MaxSize(&v181, &v6[v7])}];
      v93 = self->_currentValue;
      self->_currentValue = v92;

      v95 = v181 + 1;
      v94 = *v181;
      self->_formFlag = v94;
      v181 = v95;
      if (v94 == 2)
      {
        v151 = ReadUInt16MaxSize(&v181, &v6[v7]);
        self->_numberOfValues = v151;
        if (v151)
        {
          v152 = 0;
          do
          {
            ReadUInt64MaxSize(&v181, &v6[v7]);
            v153 = ReadUInt64MaxSize(&v181, &v6[v7]);
            v154 = self->_supportedValues;
            v155 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:v153];
            [(NSMutableArray *)v154 addObject:v155];

            ++v152;
          }

          while (v152 < self->_numberOfValues);
        }
      }

      else if (v94 == 1)
      {
        ReadUInt64MaxSize(&v181, &v6[v7]);
        v96 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedLongLong:{ReadUInt64MaxSize(&v181, &v6[v7])}];
        v97 = self->_minimumValue;
        self->_minimumValue = v96;

        ReadUInt64MaxSize(&v181, &v6[v7]);
        v98 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedLongLong:{ReadUInt64MaxSize(&v181, &v6[v7])}];
        v99 = self->_maximumValue;
        self->_maximumValue = v98;

        ReadUInt64MaxSize(&v181, &v6[v7]);
        goto LABEL_39;
      }

      break;
    case 0xFFFF:
      v31 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&v181, &v6[v7]);
      v32 = self->_factoryDefaultValue;
      self->_factoryDefaultValue = v31;

      v33 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&v181, &v6[v7]);
      v34 = self->_currentValue;
      self->_currentValue = v33;

      v35 = v181 + 1;
      v36 = *v181;
      self->_formFlag = v36;
      v181 = v35;
      if (v36 == 2)
      {
        v37 = ReadUInt16MaxSize(&v181, &v6[v7]);
        self->_numberOfValues = v37;
        if (v37)
        {
          v38 = 0;
          do
          {
            v39 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&v181, &v6[v7]);
            [(NSMutableArray *)self->_supportedValues addObject:v39];

            ++v38;
          }

          while (v38 < self->_numberOfValues);
        }
      }

      break;
  }

LABEL_51:
}

- (PTPDevicePropDescDataset)initWithData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PTPDevicePropDescDataset;
  v5 = [(PTPDevicePropDescDataset *)&v10 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:0];
    supportedValues = v5->_supportedValues;
    v5->_supportedValues = v6;

    if ([v4 length] < 6)
    {

      v5 = 0;
    }

    else
    {
      v8 = [v4 mutableCopy];
      [(PTPDevicePropDescDataset *)v5 setContent:v8];

      v5->_readOnlyObject = 1;
    }
  }

  return v5;
}

- (PTPDevicePropDescDataset)initWithMutableData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PTPDevicePropDescDataset;
  v5 = [(PTPDevicePropDescDataset *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:0];
    supportedValues = v5->_supportedValues;
    v5->_supportedValues = v6;

    if ([v4 length] < 6)
    {

      v5 = 0;
    }

    else
    {
      [(PTPDevicePropDescDataset *)v5 setContent:v4];
      v5->_readOnlyObject = 0;
    }
  }

  return v5;
}

- (void)updateContent
{
  if (self->_dirty)
  {
    v69[7] = v2;
    v69[8] = v3;
    if (!self->_readOnlyObject)
    {
      v5 = 0;
      dataTypeCode = self->_dataTypeCode;
      v7 = 6;
      if (dataTypeCode <= 4)
      {
        if (dataTypeCode - 1 < 2)
        {
          formFlag = self->_formFlag;
          if (formFlag == 1)
          {
            v5 = 0;
            v7 = 11;
          }

          else
          {
            v5 = 0;
            if (formFlag == 2)
            {
              v7 = self->_numberOfValues + 10;
            }

            else
            {
              v7 = 8;
            }
          }
        }

        else if (dataTypeCode - 3 < 2)
        {
          v9 = self->_formFlag;
          if (v9 == 1)
          {
            v5 = 0;
            v7 = 16;
          }

          else
          {
            v5 = 0;
            if (v9 == 2)
            {
              v7 = 2 * self->_numberOfValues + 12;
            }

            else
            {
              v7 = 10;
            }
          }
        }
      }

      else
      {
        if (dataTypeCode <= 0xA)
        {
          if (((1 << dataTypeCode) & 0x60) != 0)
          {
            v10 = self->_formFlag;
            if (v10 == 1)
            {
              v5 = 0;
              v7 = 26;
            }

            else
            {
              v5 = 0;
              if (v10 == 2)
              {
                v7 = 4 * self->_numberOfValues + 16;
              }

              else
              {
                v7 = 14;
              }
            }

            goto LABEL_49;
          }

          if (((1 << dataTypeCode) & 0x180) != 0)
          {
            v12 = self->_formFlag;
            if (v12 == 1)
            {
              v5 = 0;
              v7 = 46;
            }

            else
            {
              v5 = 0;
              if (v12 == 2)
              {
                v7 = 8 * self->_numberOfValues + 24;
              }

              else
              {
                v7 = 22;
              }
            }

            goto LABEL_49;
          }

          if (((1 << dataTypeCode) & 0x600) != 0)
          {
            v8 = self->_formFlag;
            if (v8 == 1)
            {
              v5 = 0;
              v7 = 86;
            }

            else
            {
              v5 = 0;
              if (v8 == 2)
              {
                v7 = 8 * self->_numberOfValues + 40;
              }

              else
              {
                v7 = 38;
              }
            }

            goto LABEL_49;
          }
        }

        if (dataTypeCode == 0xFFFF)
        {
          v13 = [self->_factoryDefaultValue length];
          if (v13)
          {
            v14 = 2 * v13 + 10;
          }

          else
          {
            v14 = 8;
          }

          v15 = [self->_currentValue length];
          v16 = 2 * v15 + 2;
          if (!v15)
          {
            v16 = 0;
          }

          v7 = v16 + v14;
          if (self->_formFlag == 2 && (v7 += 2, self->_numberOfValues))
          {
            v17 = 0;
            v18 = 0;
            do
            {
              v5 = [(NSMutableArray *)self->_supportedValues objectAtIndex:v17];

              v19 = [v5 length];
              v20 = 2 * v19 + 3;
              if (!v19)
              {
                v20 = 1;
              }

              v7 += v20;
              ++v17;
              v18 = v5;
            }

            while (v17 < self->_numberOfValues);
          }

          else
          {
            v5 = 0;
          }
        }
      }

LABEL_49:
      [(NSMutableData *)self->_content setLength:v7];
      v69[0] = [(NSMutableData *)self->_content mutableBytes];
      WriteUInt16(v69, self->_devicePropertyCode);
      WriteUInt16(v69, self->_dataTypeCode);
      *v69[0]++ = self->_readWriteAttribute;
      v21 = self->_dataTypeCode;
      if (v21 <= 5)
      {
        if (self->_dataTypeCode <= 2u)
        {
          if (v21 == 1)
          {
            v36 = [self->_factoryDefaultValue charValue];
            *v69[0]++ = v36;
            v37 = [self->_currentValue charValue];
            *v69[0] = v37;
            v38 = v69[0]++;
            v31 = self->_formFlag;
            *(v38 + 1) = v31;
            ++v69[0];
            if (v31 == 2)
            {
              WriteUInt16(v69, self->_numberOfValues);
              if (!self->_numberOfValues)
              {
                goto LABEL_134;
              }

              v49 = 0;
              v33 = 0;
              do
              {
                v50 = v33;
                v33 = [(NSMutableArray *)self->_supportedValues objectAtIndex:v49];

                v51 = [v33 charValue];
                *v69[0]++ = v51;
                ++v49;
              }

              while (v49 < self->_numberOfValues);
              goto LABEL_133;
            }
          }

          else
          {
            if (v21 != 2)
            {
              goto LABEL_134;
            }

            v28 = [self->_factoryDefaultValue charValue];
            *v69[0]++ = v28;
            v29 = [self->_currentValue charValue];
            *v69[0] = v29;
            v30 = v69[0]++;
            v31 = self->_formFlag;
            *(v30 + 1) = v31;
            ++v69[0];
            if (v31 == 2)
            {
              WriteUInt16(v69, self->_numberOfValues);
              if (!self->_numberOfValues)
              {
                goto LABEL_134;
              }

              v32 = 0;
              v33 = 0;
              do
              {
                v34 = v33;
                v33 = [(NSMutableArray *)self->_supportedValues objectAtIndex:v32];

                v35 = [v33 charValue];
                *v69[0]++ = v35;
                ++v32;
              }

              while (v32 < self->_numberOfValues);
              goto LABEL_133;
            }
          }

          if (v31 == 1)
          {
            v39 = [self->_minimumValue charValue];
            *v69[0]++ = v39;
            v40 = [self->_maximumValue charValue];
            *v69[0]++ = v40;
            v41 = [self->_stepSize charValue];
            *v69[0]++ = v41;
          }

          goto LABEL_134;
        }

        switch(v21)
        {
          case 3u:
            WriteSInt16(v69, [self->_factoryDefaultValue shortValue]);
            WriteSInt16(v69, [self->_currentValue shortValue]);
            v46 = self->_formFlag;
            *v69[0]++ = v46;
            if (v46 != 2)
            {
              if (v46 == 1)
              {
                WriteSInt16(v69, [self->_minimumValue shortValue]);
                WriteSInt16(v69, [self->_maximumValue shortValue]);
                WriteSInt16(v69, [self->_stepSize shortValue]);
              }

              goto LABEL_134;
            }

            WriteUInt16(v69, self->_numberOfValues);
            if (!self->_numberOfValues)
            {
              goto LABEL_134;
            }

            v61 = 0;
            v33 = 0;
            do
            {
              v62 = v33;
              v33 = [(NSMutableArray *)self->_supportedValues objectAtIndex:v61];

              WriteSInt16(v69, [v33 shortValue]);
              ++v61;
            }

            while (v61 < self->_numberOfValues);
            break;
          case 4u:
            WriteUInt16(v69, [self->_factoryDefaultValue shortValue]);
            WriteUInt16(v69, [self->_currentValue shortValue]);
            v42 = self->_formFlag;
            *v69[0]++ = v42;
            if (v42 != 2)
            {
              if (v42 == 1)
              {
                WriteUInt16(v69, [self->_minimumValue shortValue]);
                WriteUInt16(v69, [self->_maximumValue shortValue]);
                WriteUInt16(v69, [self->_stepSize shortValue]);
              }

              goto LABEL_134;
            }

            WriteUInt16(v69, self->_numberOfValues);
            if (!self->_numberOfValues)
            {
              goto LABEL_134;
            }

            v52 = 0;
            v33 = 0;
            do
            {
              v53 = v33;
              v33 = [(NSMutableArray *)self->_supportedValues objectAtIndex:v52];

              WriteUInt16(v69, [v33 shortValue]);
              ++v52;
            }

            while (v52 < self->_numberOfValues);
            break;
          case 5u:
            WriteSInt32(v69, [self->_factoryDefaultValue intValue]);
            WriteSInt32(v69, [self->_currentValue intValue]);
            v24 = self->_formFlag;
            *v69[0]++ = v24;
            if (v24 != 2)
            {
              if (v24 == 1)
              {
                WriteSInt32(v69, [self->_minimumValue intValue]);
                WriteSInt32(v69, [self->_maximumValue intValue]);
                WriteSInt32(v69, [self->_stepSize intValue]);
              }

              goto LABEL_134;
            }

            WriteUInt16(v69, self->_numberOfValues);
            if (!self->_numberOfValues)
            {
              goto LABEL_134;
            }

            v59 = 0;
            v33 = 0;
            do
            {
              v60 = v33;
              v33 = [(NSMutableArray *)self->_supportedValues objectAtIndex:v59];

              WriteSInt32(v69, [v33 intValue]);
              ++v59;
            }

            while (v59 < self->_numberOfValues);
            break;
          default:
            goto LABEL_134;
        }

LABEL_133:

        goto LABEL_134;
      }

      if (self->_dataTypeCode <= 8u)
      {
        if (v21 == 6)
        {
          WriteUInt32(v69, [self->_factoryDefaultValue unsignedIntValue]);
          WriteUInt32(v69, [self->_currentValue unsignedIntValue]);
          v47 = self->_formFlag;
          *v69[0]++ = v47;
          if (v47 != 2)
          {
            if (v47 == 1)
            {
              WriteUInt32(v69, [self->_minimumValue unsignedIntValue]);
              WriteUInt32(v69, [self->_maximumValue unsignedIntValue]);
              WriteUInt32(v69, [self->_stepSize unsignedIntValue]);
            }

            goto LABEL_134;
          }

          WriteUInt16(v69, self->_numberOfValues);
          if (!self->_numberOfValues)
          {
            goto LABEL_134;
          }

          v65 = 0;
          v33 = 0;
          do
          {
            v66 = v33;
            v33 = [(NSMutableArray *)self->_supportedValues objectAtIndex:v65];

            WriteUInt32(v69, [v33 unsignedIntValue]);
            ++v65;
          }

          while (v65 < self->_numberOfValues);
          goto LABEL_133;
        }

        if (v21 != 7)
        {
          if (v21 != 8)
          {
            goto LABEL_134;
          }

          WriteUInt64(v69, [self->_factoryDefaultValue unsignedLongLongValue]);
          WriteUInt64(v69, [self->_currentValue unsignedLongLongValue]);
          v22 = self->_formFlag;
          *v69[0]++ = v22;
          if (v22 != 2)
          {
            if (v22 == 1)
            {
              WriteUInt64(v69, [self->_minimumValue unsignedLongLongValue]);
              v23 = [self->_maximumValue unsignedLongLongValue];
LABEL_91:
              WriteUInt64(v69, v23);
              WriteUInt64(v69, [self->_stepSize unsignedLongLongValue]);
              goto LABEL_134;
            }

            goto LABEL_134;
          }

          WriteUInt16(v69, self->_numberOfValues);
          if (!self->_numberOfValues)
          {
            goto LABEL_134;
          }

          v63 = 0;
          v33 = 0;
          do
          {
            v64 = v33;
            v33 = [(NSMutableArray *)self->_supportedValues objectAtIndex:v63];

            WriteUInt64(v69, [v33 unsignedLongLongValue]);
            ++v63;
          }

          while (v63 < self->_numberOfValues);
          goto LABEL_133;
        }

        WriteSInt64(v69, [self->_factoryDefaultValue longLongValue]);
        WriteSInt64(v69, [self->_currentValue longLongValue]);
        v43 = self->_formFlag;
        *v69[0]++ = v43;
        if (v43 == 2)
        {
          WriteUInt16(v69, self->_numberOfValues);
          if (!self->_numberOfValues)
          {
            goto LABEL_134;
          }

          v54 = 0;
          v33 = 0;
          do
          {
            v55 = v33;
            v33 = [(NSMutableArray *)self->_supportedValues objectAtIndex:v54];

            WriteSInt64(v69, [v33 longLongValue]);
            ++v54;
          }

          while (v54 < self->_numberOfValues);
          goto LABEL_133;
        }

        if (v43 != 1)
        {
          goto LABEL_134;
        }

        WriteSInt64(v69, [self->_minimumValue longLongValue]);
        v44 = [self->_maximumValue longLongValue];
LABEL_101:
        WriteSInt64(v69, v44);
        WriteSInt64(v69, [self->_stepSize longLongValue]);
        goto LABEL_134;
      }

      if (v21 == 9)
      {
        WriteSInt64(v69, 0x4170706C65496E63);
        WriteSInt64(v69, [self->_factoryDefaultValue longLongValue]);
        WriteSInt64(v69, 0x4170706C65496E63);
        WriteSInt64(v69, [self->_currentValue longLongValue]);
        v48 = self->_formFlag;
        *v69[0]++ = v48;
        if (v48 != 2)
        {
          if (v48 != 1)
          {
            goto LABEL_134;
          }

          WriteSInt64(v69, 0x4170706C65496E63);
          WriteSInt64(v69, [self->_minimumValue longLongValue]);
          WriteSInt64(v69, 0x4170706C65496E63);
          WriteSInt64(v69, [self->_maximumValue longLongValue]);
          v44 = 0x4170706C65496E63;
          goto LABEL_101;
        }

        WriteUInt16(v69, self->_numberOfValues);
        if (!self->_numberOfValues)
        {
          goto LABEL_134;
        }

        v67 = 0;
        v57 = 0;
        do
        {
          v68 = v57;
          v57 = [(NSMutableArray *)self->_supportedValues objectAtIndex:v67];

          WriteSInt64(v69, 0x4170706C65496E63);
          WriteSInt64(v69, [v57 longLongValue]);
          ++v67;
        }

        while (v67 < self->_numberOfValues);
      }

      else
      {
        if (v21 != 10)
        {
          if (v21 == 0xFFFF)
          {
            WriteUnicodeStringWithLengthByteToBuffer(v69, self->_factoryDefaultValue);
            WriteUnicodeStringWithLengthByteToBuffer(v69, self->_currentValue);
            v25 = self->_formFlag;
            *v69[0]++ = v25;
            if (v25 == 2)
            {
              WriteUInt16(v69, self->_numberOfValues);
              if (self->_numberOfValues)
              {
                v26 = 0;
                v27 = v5;
                do
                {
                  v5 = [(NSMutableArray *)self->_supportedValues objectAtIndex:v26];

                  WriteUnicodeStringWithLengthByteToBuffer(v69, v5);
                  ++v26;
                  v27 = v5;
                }

                while (v26 < self->_numberOfValues);
              }
            }
          }

          goto LABEL_134;
        }

        WriteUInt64(v69, 0x4170706C65496E63);
        WriteUInt64(v69, [self->_factoryDefaultValue unsignedLongLongValue]);
        WriteUInt64(v69, 0x4170706C65496E63);
        WriteUInt64(v69, [self->_currentValue unsignedLongLongValue]);
        v45 = self->_formFlag;
        *v69[0]++ = v45;
        if (v45 != 2)
        {
          if (v45 == 1)
          {
            WriteUInt64(v69, 0x4170706C65496E63);
            WriteUInt64(v69, [self->_minimumValue unsignedLongLongValue]);
            WriteUInt64(v69, 0x4170706C65496E63);
            WriteUInt64(v69, [self->_maximumValue unsignedLongLongValue]);
            v23 = 0x4170706C65496E63;
            goto LABEL_91;
          }

LABEL_134:
          self->_dirty = 0;

          return;
        }

        WriteUInt16(v69, self->_numberOfValues);
        if (!self->_numberOfValues)
        {
          goto LABEL_134;
        }

        v56 = 0;
        v57 = 0;
        do
        {
          v58 = v57;
          v57 = [(NSMutableArray *)self->_supportedValues objectAtIndex:v56];

          WriteUInt64(v69, 0x4170706C65496E63);
          WriteUInt64(v69, [v57 unsignedLongLongValue]);
          ++v56;
        }

        while (v56 < self->_numberOfValues);
      }

      goto LABEL_134;
    }
  }
}

- (NSMutableData)content
{
  [(PTPDevicePropDescDataset *)self updateContent];
  content = self->_content;

  return content;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = stringForDevicePropCode(self->_devicePropertyCode);
  v5 = v4;
  v6 = "RW";
  if (!self->_readWriteAttribute)
  {
    v6 = "RO";
  }

  v7 = [v3 stringWithFormat:@"<PTPDevicePropDescDataset %p>{\n  _devicePropertyCode:  %@\n  _dataTypeCode:        %u\n  _readWriteAttribute:  %s\n  _factoryDefaultValue: %@\n  _currentValue:        %@\n  _formFlag:            %u\n", self, v4, self->_dataTypeCode, v6, self->_factoryDefaultValue, self->_currentValue, self->_formFlag];

  formFlag = self->_formFlag;
  if (formFlag == 2)
  {
    [v7 appendFormat:@"  _numberOfValues:      %u\n", self->_numberOfValues];
    if (self->_numberOfValues)
    {
      v9 = 0;
      do
      {
        v10 = [(NSMutableArray *)self->_supportedValues objectAtIndex:v9];
        [v7 appendFormat:@"    _supportedValue %02d: %@\n", v9, v10];

        ++v9;
      }

      while (v9 < self->_numberOfValues);
    }
  }

  else if (formFlag == 1)
  {
    [v7 appendFormat:@"  _minimumValue:        %@\n  _maximumValue:        %@\n  _stepSize:            %@\n", self->_minimumValue, self->_maximumValue, self->_stepSize];
  }

  [v7 appendString:@"}"];

  return v7;
}

- (void)setFactoryDefaultValue:(id)a3
{
  v5 = a3;
  p_factoryDefaultValue = &self->_factoryDefaultValue;
  if (self->_factoryDefaultValue != v5)
  {
    v7 = v5;
    objc_storeStrong(p_factoryDefaultValue, a3);
    v5 = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_factoryDefaultValue, v5);
}

- (void)setCurrentValue:(id)a3
{
  v5 = a3;
  p_currentValue = &self->_currentValue;
  if (self->_currentValue != v5)
  {
    v7 = v5;
    objc_storeStrong(p_currentValue, a3);
    v5 = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_currentValue, v5);
}

- (void)setMinimumValue:(id)a3
{
  v5 = a3;
  p_minimumValue = &self->_minimumValue;
  if (self->_minimumValue != v5)
  {
    v7 = v5;
    objc_storeStrong(p_minimumValue, a3);
    v5 = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_minimumValue, v5);
}

- (void)setMaximumValue:(id)a3
{
  v5 = a3;
  p_maximumValue = &self->_maximumValue;
  if (self->_maximumValue != v5)
  {
    v7 = v5;
    objc_storeStrong(p_maximumValue, a3);
    v5 = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_maximumValue, v5);
}

- (void)setStepSize:(id)a3
{
  v5 = a3;
  p_stepSize = &self->_stepSize;
  if (self->_stepSize != v5)
  {
    v7 = v5;
    objc_storeStrong(p_stepSize, a3);
    v5 = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_stepSize, v5);
}

- (void)setSupportedValues:(id)a3
{
  v5 = a3;
  p_supportedValues = &self->_supportedValues;
  if (self->_supportedValues != v5)
  {
    v7 = v5;
    objc_storeStrong(p_supportedValues, a3);
    v5 = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_supportedValues, v5);
}

@end