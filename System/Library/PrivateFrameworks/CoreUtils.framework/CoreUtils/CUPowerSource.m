@interface CUPowerSource
- (BOOL)hasAllComponents;
- (BOOL)isAggregateComponent;
- (BOOL)isEqual:(id)a3;
- (CUPowerSource)initWithCoder:(id)a3;
- (NSArray)LEDs;
- (id)description;
- (id)detailedDescription;
- (int)publish;
- (unint64_t)hash;
- (unsigned)updateWithPowerAdapterDetails:(id)a3;
- (unsigned)updateWithPowerSourceDescription:(id)a3;
- (void)_updateWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleSubComponentsUpdatedWithBaseSource:(id)a3;
- (void)invalidate;
- (void)updateWithPowerSource:(id)a3;
@end

@implementation CUPowerSource

- (unsigned)updateWithPowerSourceDescription:(id)a3
{
  v131 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_ioKitDescription, a3);
  self->_present = 1;
  TypeID = CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue(v5, @"Accessory Category", TypeID, 0);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  accessoryCategory = self->_accessoryCategory;
  v10 = v7;
  v11 = accessoryCategory;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_7;
  }

  if (v11)
  {
    v13 = [(NSString *)v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_10;
  }

LABEL_9:
  objc_storeStrong(&self->_accessoryCategory, v8);
  v14 = 1;
LABEL_10:
  v15 = CFStringGetTypeID();
  v16 = CFDictionaryGetTypedValue(v5, @"Accessory Identifier", v15, 0);

  if (!v16)
  {
    goto LABEL_18;
  }

  accessoryID = self->_accessoryID;
  v18 = v16;
  v19 = accessoryID;
  v20 = v19;
  if (v18 == v19)
  {

    goto LABEL_18;
  }

  if (!v19)
  {

    goto LABEL_17;
  }

  v21 = [(NSString *)v18 isEqual:v19];

  if ((v21 & 1) == 0)
  {
LABEL_17:
    objc_storeStrong(&self->_accessoryID, v16);
    v14 = 1;
  }

LABEL_18:
  Int64 = CFDictionaryGetInt64(v5, @"Is Charging", 0);
  v23 = CFDictionaryGetInt64(v5, @"Show Charging UI", 0);
  v24 = v23 != 0;
  v25 = (Int64 | v23) != 0;
  if (self->_charging != v25)
  {
    self->_charging = v25;
    v14 |= 4u;
  }

  if (self->_showChargingUI != v24)
  {
    self->_showChargingUI = v24;
    v14 |= 4u;
  }

  Double = CFDictionaryGetDouble(v5, @"Current Capacity", 0);
  v27 = CFDictionaryGetDouble(v5, @"Max Capacity", 0);
  v28 = Double / v27;
  if (v27 <= 0.0)
  {
    v28 = 1.0;
  }

  if (v28 > 1.0)
  {
    v28 = 1.0;
  }

  if (v28 < 0.0)
  {
    v28 = 0.0;
  }

  if (v28 != self->_chargeLevel)
  {
    self->_chargeLevel = v28;
    v14 |= 2u;
  }

  v29 = CFStringGetTypeID();
  v30 = CFDictionaryGetTypedValue(v5, @"Group Identifier", v29, 0);

  if (v30)
  {
    groupID = self->_groupID;
    v32 = v30;
    v33 = groupID;
    v34 = v33;
    if (v32 == v33)
    {
    }

    else
    {
      if (v33)
      {
        v35 = [(NSString *)v32 isEqual:v33];

        if (v35)
        {
          goto LABEL_38;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_groupID, v30);
      v14 |= 1u;
    }
  }

LABEL_38:
  v36 = self->_groupID;
  if (v36)
  {
    v37 = [(NSString *)v36 UTF8String];
    if (v37)
    {
      v38 = v37;
      if (!strcasecmp(v37, "left"))
      {
        v39 = 1;
      }

      else if (!strcasecmp(v38, "right"))
      {
        v39 = 2;
      }

      else if (!strcasecmp(v38, "case"))
      {
        v39 = 4;
      }

      else if (!strcasecmp(v38, "leftRight"))
      {
        v39 = 3;
      }

      else if (!strcasecmp(v38, "leftCase"))
      {
        v39 = 5;
      }

      else if (!strcasecmp(v38, "rightCase"))
      {
        v39 = 6;
      }

      else
      {
        v39 = !strcasecmp(v38, "leftRightCase") ? 7 : 0;
      }
    }

    else
    {
      v39 = 0;
    }

    if (v39 != self->_expectedComponents)
    {
      self->_expectedComponents = v39;
      self->_aggregate = v39 != 0;
      v14 |= 1u;
    }
  }

  v40 = CFArrayGetTypeID();
  v41 = CFDictionaryGetTypedValue(v5, @"LEDs", v40, 0);
  if ([v41 count])
  {
    LEDs = self->_LEDs;
    v43 = v41;
    v44 = LEDs;
    v45 = v44;
    if (v43 == v44)
    {

      goto LABEL_91;
    }

    if ((v43 != 0) != (v44 == 0))
    {
      v46 = [(NSArray *)v43 isEqual:v44];

      if (v46)
      {
        goto LABEL_91;
      }
    }

    else
    {
    }

    v122 = v30;
    v123 = v41;
    v124 = self;
    v125 = v5;
    v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v48 = v43;
    v49 = [(NSArray *)v48 countByEnumeratingWithState:&v126 objects:v130 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v127;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v127 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v126 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v54 = objc_alloc_init(CUPowerSourceLEDInfo);
            v55 = CFStringGetTypeID();
            v56 = [(__CFDictionary *)CFDictionaryGetTypedValue(v53 UTF8String:v55];
            if (v56)
            {
              v57 = v56;
              if (!strcmp(v56, "Green"))
              {
                v58 = 1;
              }

              else if (!strcmp(v57, "Orange"))
              {
                v58 = 2;
              }

              else if (!strcmp(v57, "White"))
              {
                v58 = 3;
              }

              else
              {
                v58 = 0;
              }

              [(CUPowerSourceLEDInfo *)v54 setLEDColor:v58];
            }

            v59 = CFStringGetTypeID();
            v60 = [(__CFDictionary *)CFDictionaryGetTypedValue(v53 UTF8String:v59];
            if (v60)
            {
              v61 = v60;
              if (!strcmp(v60, "Off"))
              {
                v62 = 0;
              }

              else if (!strcmp(v61, "Solid"))
              {
                v62 = 1;
              }

              else
              {
                v62 = 2 * (strcmp(v61, "Blinking") == 0);
              }

              [(CUPowerSourceLEDInfo *)v54 setLEDState:v62];
            }

            [v47 addObject:v54];
          }
        }

        v50 = [(NSArray *)v48 countByEnumeratingWithState:&v126 objects:v130 count:16];
      }

      while (v50);
    }

    v63 = [v47 copy];
    self = v124;
    v64 = v124->_LEDs;
    v124->_LEDs = v63;

    v14 |= 1u;
    v5 = v125;
    v30 = v122;
    v41 = v123;
  }

LABEL_91:
  if (v27 != self->_maxCapacity)
  {
    self->_maxCapacity = v27;
    v14 |= 4u;
  }

  v65 = CFStringGetTypeID();
  v66 = CFDictionaryGetTypedValue(v5, @"Name", v65, 0);

  if (v66)
  {
    name = self->_name;
    v68 = v66;
    v69 = name;
    v70 = v69;
    if (v68 == v69)
    {

      goto LABEL_101;
    }

    if (v69)
    {
      v71 = [(NSString *)v68 isEqual:v69];

      if (v71)
      {
        goto LABEL_101;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_name, v66);
    v14 |= 1u;
  }

LABEL_101:
  v72 = CFStringGetTypeID();
  v73 = CFDictionaryGetTypedValue(v5, @"Part Identifier", v72, 0);

  if (!v73)
  {
    goto LABEL_109;
  }

  partID = self->_partID;
  v75 = v73;
  v76 = partID;
  v77 = v76;
  if (v75 == v76)
  {

    goto LABEL_109;
  }

  if (!v76)
  {

    goto LABEL_108;
  }

  v78 = [(NSString *)v75 isEqual:v76];

  if ((v78 & 1) == 0)
  {
LABEL_108:
    objc_storeStrong(&self->_partID, v73);
    v14 |= 1u;
  }

LABEL_109:
  v79 = CFStringGetTypeID();
  v80 = CFDictionaryGetTypedValue(v5, @"Part Name", v79, 0);

  if (v80)
  {
    partName = self->_partName;
    v82 = v80;
    v83 = partName;
    v84 = v83;
    if (v82 == v83)
    {
    }

    else
    {
      if (v83)
      {
        v85 = [(NSString *)v82 isEqual:v83];

        if (v85)
        {
          goto LABEL_117;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_partName, v80);
      v14 |= 1u;
    }
  }

LABEL_117:
  v86 = CFStringGetTypeID();
  v87 = CFDictionaryGetTypedValue(v5, @"Power Source State", v86, 0);

  if (([v87 isEqual:@"AC Power"] & 1) != 0 || objc_msgSend(v87, "isEqual:", @"UPS Power"))
  {
    if (CFDictionaryGetInt64(v5, @"Is Charged", 0))
    {
      v88 = 3;
    }

    else if (CFDictionaryGetInt64(v5, @"Is Finishing Charge", 0))
    {
      v88 = 3;
    }

    else
    {
      v88 = 2;
    }
  }

  else
  {
    v88 = 1;
  }

  if (v88 != self->_powerState)
  {
    self->_powerState = v88;
    v14 |= 4u;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged(v5, @"Product ID", 0xFFFFFFFF80000000, 0x7FFFFFFFLL, 0);
  if (Int64Ranged != self->_productID)
  {
    self->_productID = Int64Ranged;
    v14 |= 1u;
  }

  v90 = CFStringGetTypeID();
  v91 = CFDictionaryGetTypedValue(v5, @"Power Source State", v90, 0);

  if (v91)
  {
    state = self->_state;
    v93 = v91;
    v94 = state;
    v95 = v94;
    if (v93 == v94)
    {

      goto LABEL_137;
    }

    if (v94)
    {
      v96 = [(NSString *)v93 isEqual:v94];

      if (v96)
      {
        goto LABEL_137;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_state, v91);
    v14 |= 4u;
  }

LABEL_137:
  v97 = CFDictionaryGetInt64Ranged(v5, @"Temperature", 0xFFFFFFFF80000000, 0x7FFFFFFFLL, 0);
  if (v97 != self->_temperature)
  {
    self->_temperature = v97;
    v14 |= 1u;
  }

  v98 = CFStringGetTypeID();
  v99 = CFDictionaryGetTypedValue(v5, @"Transport Type", v98, 0);

  if (v99)
  {
    transportType = self->_transportType;
    v101 = v99;
    v102 = transportType;
    v103 = v102;
    if (v101 == v102)
    {

      goto LABEL_147;
    }

    if (v102)
    {
      v104 = [(NSString *)v101 isEqual:v102];

      if (v104)
      {
        goto LABEL_147;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_transportType, v99);
    v14 |= 1u;
  }

LABEL_147:
  v105 = CFStringGetTypeID();
  v106 = CFDictionaryGetTypedValue(v5, @"Type", v105, 0);

  if (!v106)
  {
    goto LABEL_155;
  }

  type = self->_type;
  v108 = v106;
  v109 = type;
  v110 = v109;
  if (v108 == v109)
  {

    goto LABEL_155;
  }

  if (!v109)
  {

    goto LABEL_154;
  }

  v111 = [(NSString *)v108 isEqual:v109];

  if ((v111 & 1) == 0)
  {
LABEL_154:
    objc_storeStrong(&self->_type, v106);
    v14 |= 1u;
  }

LABEL_155:
  v112 = CFDictionaryGetInt64Ranged(v5, @"Vendor ID", 0xFFFFFFFF80000000, 0x7FFFFFFFLL, 0);
  if (v112 != self->_vendorID)
  {
    self->_vendorID = v112;
    v14 |= 1u;
  }

  if ([(NSString *)self->_type isEqual:@"Accessory Source"])
  {
    v113 = CFDictionaryGetTypeID();
    v114 = CFDictionaryGetTypedValue(v5, @"AdapterDetails", v113, 0);
    v115 = v114;
    if (v114)
    {
      ioKitAdapterDescription = self->_ioKitAdapterDescription;
      v117 = v114;
      v118 = ioKitAdapterDescription;
      v119 = v118;
      if (v117 == v118)
      {
      }

      else
      {
        if (v118)
        {
          v120 = [(NSDictionary *)v117 isEqual:v118];

          if (v120)
          {
            goto LABEL_166;
          }
        }

        else
        {
        }

        v14 |= [(CUPowerSource *)self updateWithPowerAdapterDetails:v117];
      }
    }

LABEL_166:
  }

  return v14;
}

- (void)updateWithPowerSource:(id)a3
{
  v4 = MEMORY[0x1E696ACC8];
  v5 = a3;
  v9 = [[v4 alloc] initRequiringSecureCoding:1];
  [v5 encodeWithCoder:v9];

  v6 = objc_alloc(MEMORY[0x1E696ACD0]);
  v7 = [v9 encodedData];
  v8 = [v6 initForReadingFromData:v7 error:0];

  [(CUPowerSource *)self _updateWithCoder:v8];
  [v8 finishDecoding];
}

- (unsigned)updateWithPowerAdapterDetails:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_ioKitAdapterDescription, a3);
  Int64Ranged = CFDictionaryGetInt64Ranged(v5, @"FamilyCode", 0xFFFFFFFF80000000, 0x7FFFFFFFLL, 0);
  if (Int64Ranged == self->_adapterFamilyCode)
  {
    v7 = 0;
  }

  else
  {
    self->_adapterFamilyCode = Int64Ranged;
    v7 = 256;
  }

  TypeID = CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue(v5, @"Name", TypeID, 0);
  adapterName = self->_adapterName;
  v11 = v9;
  v12 = adapterName;
  v13 = v12;
  if (v11 == v12)
  {

    v15 = v11;
LABEL_11:

    goto LABEL_12;
  }

  if ((v11 != 0) == (v12 == 0))
  {

    goto LABEL_10;
  }

  v14 = [(NSString *)v11 isEqual:v12];

  if ((v14 & 1) == 0)
  {
LABEL_10:
    v16 = v11;
    v15 = self->_adapterName;
    self->_adapterName = v16;
    v7 = 256;
    goto LABEL_11;
  }

LABEL_12:
  v17 = CFDictionaryGetInt64(v5, @"SharedSource", 0) != 0;
  if (self->_adapterSharedSource != v17)
  {
    self->_adapterSharedSource = v17;
    v7 = 256;
  }

  v18 = CFDictionaryGetInt64Ranged(v5, @"Source", 0xFFFFFFFF80000000, 0x7FFFFFFFLL, 0);
  if (v18 != self->_adapterSourceID)
  {
    self->_adapterSourceID = v18;
    v7 = 256;
  }

  v19 = CFDictionaryGetInt64Ranged(v5, @"ErrorFlags", 0xFFFFFFFF80000000, 0x7FFFFFFFLL, 0);
  if (v19 != self->_adapterErrorFlags)
  {
    self->_adapterErrorFlags = v19;
    v7 |= 0x100u;
  }

  return v7;
}

- (BOOL)isAggregateComponent
{
  if ([(NSString *)self->_accessoryCategory isEqualToString:@"Audio Battery Case"])
  {
    return 1;
  }

  accessoryCategory = self->_accessoryCategory;

  return [(NSString *)accessoryCategory isEqualToString:@"Headphone"];
}

- (void)handleSubComponentsUpdatedWithBaseSource:(id)a3
{
  v4 = a3;
  subLeft = v4;
  if (v4 || (subLeft = self->_subLeft) != 0 || (subLeft = self->_subRight) != 0)
  {
    v69 = subLeft;

    v6 = v69;
    goto LABEL_5;
  }

  v6 = self->_subCase;
  if (v6)
  {
LABEL_5:
    v70 = v6;
    v7 = [(CUPowerSource *)v6 accessoryID];
    v8 = v7;
    if (!v7)
    {
      goto LABEL_13;
    }

    accessoryID = self->_accessoryID;
    v10 = v7;
    v11 = accessoryID;
    v12 = v11;
    if (v10 == v11)
    {

      goto LABEL_13;
    }

    if (v11)
    {
      v13 = [(NSString *)v10 isEqual:v11];

      if (v13)
      {
LABEL_13:
        v14 = [(CUPowerSource *)v70 adapterErrorFlags];
        if (v14 != self->_adapterErrorFlags)
        {
          self->_adapterErrorFlags = v14;
        }

        v15 = [(CUPowerSource *)v70 adapterFamilyCode];
        if (v15 != self->_adapterFamilyCode)
        {
          self->_adapterFamilyCode = v15;
        }

        v16 = [(CUPowerSource *)v70 adapterName];

        if (v16)
        {
          adapterName = self->_adapterName;
          v18 = v16;
          v19 = adapterName;
          v20 = v19;
          if (v18 == v19)
          {

            goto LABEL_25;
          }

          if (v19)
          {
            v21 = [(NSString *)v18 isEqual:v19];

            if (v21)
            {
              goto LABEL_25;
            }
          }

          else
          {
          }

          objc_storeStrong(&self->_adapterName, v16);
        }

LABEL_25:
        v22 = [(CUPowerSource *)v70 adapterSharedSource];
        if (self->_adapterSharedSource != v22)
        {
          self->_adapterSharedSource = v22;
        }

        v23 = [(CUPowerSource *)v70 adapterSourceID];
        if (v23 != self->_adapterSourceID)
        {
          self->_adapterSourceID = v23;
        }

        v24 = 1;
        self->_aggregate = 1;
        if (![(CUPowerSource *)v70 charging])
        {
          v24 = [(CUPowerSource *)v70 adapterSourceID]>= 1 && [(CUPowerSource *)v70 adapterSourceID]!= 0xFFFF;
        }

        if (self->_charging != v24)
        {
          self->_charging = v24;
        }

        [(CUPowerSource *)v70 chargeLevel];
        v25 = 1.79769313e308;
        if (v26 < 1.79769313e308)
        {
          [(CUPowerSource *)v70 chargeLevel];
          v25 = v27;
        }

        v28 = self->_subLeft;
        if (v28)
        {
          [(CUPowerSource *)v28 chargeLevel];
          if (v29 < v25)
          {
            [(CUPowerSource *)self->_subLeft chargeLevel];
            v25 = v30;
          }
        }

        subRight = self->_subRight;
        if (subRight)
        {
          [(CUPowerSource *)subRight chargeLevel];
          if (v32 < v25)
          {
            [(CUPowerSource *)self->_subRight chargeLevel];
            v25 = v33;
          }
        }

        subCase = self->_subCase;
        if (subCase)
        {
          [(CUPowerSource *)subCase chargeLevel];
          if (v35 < v25)
          {
            [(CUPowerSource *)self->_subCase chargeLevel];
            v25 = v36;
          }
        }

        if (v25 != 1.79769313e308 && v25 != self->_chargeLevel)
        {
          self->_chargeLevel = v25;
        }

        v37 = [(CUPowerSource *)v70 expectedComponents];
        if (v37 != self->_expectedComponents)
        {
          self->_expectedComponents = v37;
        }

        v38 = [(CUPowerSource *)v70 groupID];

        if (v38)
        {
          groupID = self->_groupID;
          v40 = v38;
          v41 = groupID;
          v42 = v41;
          if (v40 == v41)
          {

            goto LABEL_59;
          }

          if (v41)
          {
            v43 = [(NSString *)v40 isEqual:v41];

            if (v43)
            {
              goto LABEL_59;
            }
          }

          else
          {
          }

          objc_storeStrong(&self->_groupID, v38);
        }

LABEL_59:
        [(CUPowerSource *)v70 chargeLevel];
        v44 = 2.22507386e-308;
        if (v45 > 2.22507386e-308)
        {
          [(CUPowerSource *)v70 maxCapacity];
          v44 = v46;
        }

        v47 = self->_subLeft;
        if (v47)
        {
          [(CUPowerSource *)v47 chargeLevel];
          if (v48 > v44)
          {
            [(CUPowerSource *)self->_subLeft maxCapacity];
            v44 = v49;
          }
        }

        v50 = self->_subRight;
        if (v50)
        {
          [(CUPowerSource *)v50 chargeLevel];
          if (v51 > v44)
          {
            [(CUPowerSource *)self->_subRight maxCapacity];
            v44 = v52;
          }
        }

        v53 = self->_subCase;
        if (v53)
        {
          [(CUPowerSource *)v53 chargeLevel];
          if (v54 > v44)
          {
            [(CUPowerSource *)self->_subCase maxCapacity];
            v44 = v55;
          }
        }

        if (v44 != 2.22507386e-308 && v44 != self->_maxCapacity)
        {
          self->_maxCapacity = v44;
        }

        v56 = [(CUPowerSource *)v70 name];

        if (!v56)
        {
          goto LABEL_81;
        }

        name = self->_name;
        v58 = v56;
        v59 = name;
        v60 = v59;
        if (v58 == v59)
        {
        }

        else
        {
          if (v59)
          {
            v61 = [(NSString *)v58 isEqual:v59];

            if (v61)
            {
              goto LABEL_81;
            }
          }

          else
          {
          }

          objc_storeStrong(&self->_name, v56);
        }

LABEL_81:
        v62 = [(CUPowerSource *)v70 productID];
        if (v62 != self->_productID)
        {
          self->_productID = v62;
        }

        v63 = [(CUPowerSource *)v70 vendorID];
        if (v63 != self->_vendorID)
        {
          self->_vendorID = v63;
        }

        goto LABEL_85;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_accessoryID, v8);
    goto LABEL_13;
  }

  if (gLogCategory_CUPowerSourceMonitor <= 60 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSource handleSubComponentsUpdatedWithBaseSource:]", 0x3Cu, "### Updating aggregate without subcomponents?", v64, v65, v66, v67, v68);
  }

  v70 = 0;
  v56 = 0;
LABEL_85:
}

- (NSArray)LEDs
{
  if (self->_LEDs)
  {
    return self->_LEDs;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_psID)
  {
    IOPSReleasePowerSource();
    obj->_psID = 0;
  }

  [(CUPowerSource *)obj->_subLeft invalidate];
  subLeft = obj->_subLeft;
  obj->_subLeft = 0;

  [(CUPowerSource *)obj->_subRight invalidate];
  subRight = obj->_subRight;
  obj->_subRight = 0;

  [(CUPowerSource *)obj->_subCase invalidate];
  subCase = obj->_subCase;
  obj->_subCase = 0;

  [(CUPowerSource *)obj->_subMain invalidate];
  subMain = obj->_subMain;
  obj->_subMain = 0;

  objc_sync_exit(obj);
}

- (int)publish
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v49 = v2;
  if (v2->_psID || (v46 = IOPSCreatePowerSource()) == 0)
  {
    v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
    accessoryCategory = v2->_accessoryCategory;
    if (accessoryCategory)
    {
      [(NSDictionary *)v48 setObject:accessoryCategory forKeyedSubscript:@"Accessory Category"];
    }

    accessoryID = v2->_accessoryID;
    if (accessoryID)
    {
      [(NSDictionary *)v48 setObject:accessoryID forKeyedSubscript:@"Accessory Identifier"];
    }

    v5 = [MEMORY[0x1E696AD98] numberWithBool:{v2->_charging, &v2->_psID}];
    [(NSDictionary *)v48 setObject:v5 forKeyedSubscript:@"Is Charging"];

    v6 = [MEMORY[0x1E696AD98] numberWithInt:fabs(v2->_chargeLevel + -1.0) < 0.00000011920929];
    [(NSDictionary *)v48 setObject:v6 forKeyedSubscript:@"Is Charged"];

    v7 = [MEMORY[0x1E696AD98] numberWithInt:(v2->_chargeLevel * 100.0)];
    [(NSDictionary *)v48 setObject:v7 forKeyedSubscript:@"Current Capacity"];

    groupID = v2->_groupID;
    if (groupID)
    {
      [(NSDictionary *)v48 setObject:groupID forKeyedSubscript:@"Group Identifier"];
    }

    if ([(NSArray *)v2->_LEDs count])
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = v2->_LEDs;
      v10 = [(NSArray *)obj countByEnumeratingWithState:&v51 objects:v57 count:16];
      if (v10)
      {
        v11 = *v52;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v52 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v51 + 1) + 8 * i);
            v14 = MEMORY[0x1E696AEC0];
            v15 = [v13 LEDState];
            v16 = "?";
            if (v15 <= 2)
            {
              v16 = off_1E73A3B20[v15];
            }

            v17 = [v14 stringWithUTF8String:v16];
            v18 = MEMORY[0x1E696AEC0];
            v19 = [v13 LEDColor];
            v20 = "?";
            if (v19 <= 3)
            {
              v20 = off_1E73A3B38[v19];
            }

            v21 = [v18 stringWithUTF8String:v20];
            v55[0] = @"State";
            v55[1] = @"Color";
            v56[0] = v17;
            v56[1] = v21;
            v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
            [v9 addObject:v22];
          }

          v10 = [(NSArray *)obj countByEnumeratingWithState:&v51 objects:v57 count:16];
        }

        while (v10);
      }

      [(NSDictionary *)v48 setObject:v9 forKeyedSubscript:@"LEDs"];
    }

    v23 = [MEMORY[0x1E696AD98] numberWithDouble:v2->_maxCapacity];
    [(NSDictionary *)v48 setObject:v23 forKeyedSubscript:@"Max Capacity"];

    name = v2->_name;
    if (name)
    {
      [(NSDictionary *)v48 setObject:name forKeyedSubscript:@"Name"];
    }

    partID = v2->_partID;
    if (partID)
    {
      [(NSDictionary *)v48 setObject:partID forKeyedSubscript:@"Part Identifier"];
    }

    partName = v2->_partName;
    if (partName)
    {
      [(NSDictionary *)v48 setObject:partName forKeyedSubscript:@"Part Name"];
    }

    if (v2->_productID)
    {
      v27 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [(NSDictionary *)v48 setObject:v27 forKeyedSubscript:@"Product ID"];
    }

    state = v2->_state;
    if (state)
    {
      [(NSDictionary *)v48 setObject:state forKeyedSubscript:@"Power Source State"];
    }

    v29 = [MEMORY[0x1E696AD98] numberWithInteger:v2->_temperature];
    [(NSDictionary *)v48 setObject:v29 forKeyedSubscript:@"Temperature"];

    transportType = v2->_transportType;
    if (transportType)
    {
      [(NSDictionary *)v48 setObject:transportType forKeyedSubscript:@"Transport Type"];
    }

    type = v2->_type;
    if (type)
    {
      [(NSDictionary *)v48 setObject:type forKeyedSubscript:@"Type"];
    }

    if (v2->_vendorID)
    {
      v32 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [(NSDictionary *)v48 setObject:v32 forKeyedSubscript:@"Vendor ID"];
    }

    if ([(NSString *)v2->_type isEqual:@"Accessory Source"])
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (v2->_adapterErrorFlags)
      {
        v34 = [MEMORY[0x1E696AD98] numberWithInteger:?];
        [v33 setObject:v34 forKeyedSubscript:@"ErrorFlags"];
      }

      if (v2->_adapterFamilyCode)
      {
        v35 = [MEMORY[0x1E696AD98] numberWithInteger:?];
        [v33 setObject:v35 forKeyedSubscript:@"FamilyCode"];
      }

      adapterName = v2->_adapterName;
      if (adapterName)
      {
        [v33 setObject:adapterName forKeyedSubscript:@"Name"];
      }

      v37 = [MEMORY[0x1E696AD98] numberWithBool:v2->_adapterSharedSource];
      [v33 setObject:v37 forKeyedSubscript:@"SharedSource"];

      if (v2->_adapterSourceID)
      {
        v38 = [MEMORY[0x1E696AD98] numberWithInteger:?];
        [v33 setObject:v38 forKeyedSubscript:@"Source"];
      }

      [(NSDictionary *)v48 setObject:v33 forKeyedSubscript:@"AdapterDetails"];
    }

    v39 = v48;
    if (!v48)
    {
      goto LABEL_57;
    }

    p_ioKitDescription = &v2->_ioKitDescription;
    ioKitDescription = v2->_ioKitDescription;
    v42 = v48;
    v43 = ioKitDescription;
    v44 = v43;
    if (v42 == v43)
    {

      v39 = v48;
    }

    else
    {
      if (v43)
      {
        v45 = [(NSDictionary *)v42 isEqual:v43];

        v39 = v48;
        if (v45)
        {
          goto LABEL_57;
        }
      }

      else
      {

        v39 = v48;
      }

      objc_storeStrong(p_ioKitDescription, v39);
      v46 = IOPSSetPowerSourceDetails();
      v39 = v48;
      if (v46)
      {
        goto LABEL_58;
      }
    }

LABEL_57:
    v46 = 0;
    v42 = v39;
    goto LABEL_58;
  }

  v42 = 0;
LABEL_58:

  objc_sync_exit(v49);
  return v46;
}

- (id)detailedDescription
{
  if (self->_ioKitAdapterDescription)
  {
    NSPrintF("CUPowerSource %{ptr} %@Adapter %@\n", a2, v2, v3, v4, v5, v6, v7, self);
  }

  else
  {
    NSPrintF("CUPowerSource %{ptr} %@", a2, v2, v3, v4, v5, v6, v7, self);
  }
  v8 = ;

  return v8;
}

- (id)description
{
  v109 = 0;
  NSAppendPrintF(&v109, "CUPowerSource %{ptr}", v2, v3, v4, v5, v6, v7, self);
  v9 = v109;
  v16 = v9;
  sourceID = self->_sourceID;
  if (sourceID)
  {
    v108 = v9;
    NSAppendPrintF(&v108, ", SID %ld", v10, v11, v12, v13, v14, v15, sourceID);
    v18 = v108;

    v16 = v18;
  }

  accessoryCategory = self->_accessoryCategory;
  if (accessoryCategory)
  {
    v107 = v16;
    NSAppendPrintF(&v107, ", AcCa %@", v10, v11, v12, v13, v14, v15, accessoryCategory);
    v20 = v107;

    v16 = v20;
  }

  accessoryID = self->_accessoryID;
  if (accessoryID)
  {
    v106 = v16;
    NSAppendPrintF(&v106, ", AcID %@", v10, v11, v12, v13, v14, v15, accessoryID);
    v22 = v106;

    v16 = v22;
  }

  adapterErrorFlags = self->_adapterErrorFlags;
  if (adapterErrorFlags)
  {
    v105 = v16;
    NSAppendPrintF(&v105, ", AdEF %ld", v10, v11, v12, v13, v14, v15, adapterErrorFlags);
    v24 = v105;

    v16 = v24;
  }

  adapterFamilyCode = self->_adapterFamilyCode;
  if (adapterFamilyCode)
  {
    v104 = v16;
    NSAppendPrintF(&v104, ", AdFm %ld", v10, v11, v12, v13, v14, v15, adapterFamilyCode);
    v26 = v104;

    v16 = v26;
  }

  adapterName = self->_adapterName;
  if (adapterName)
  {
    v103 = v16;
    NSAppendPrintF(&v103, ", AdNm '%@'", v10, v11, v12, v13, v14, v15, adapterName);
    v28 = v103;

    v16 = v28;
  }

  if (self->_adapterSharedSource)
  {
    v102 = v16;
    NSAppendPrintF(&v102, ", AdSS %s", v10, v11, v12, v13, v14, v15, "yes");
    v29 = v102;

    v16 = v29;
  }

  adapterSourceID = self->_adapterSourceID;
  if (adapterSourceID)
  {
    v101 = v16;
    NSAppendPrintF(&v101, ", AdSI %ld", v10, v11, v12, v13, v14, v15, adapterSourceID);
    v31 = v101;

    v16 = v31;
  }

  if (self->_showChargingUI)
  {
    v100 = v16;
    NSAppendPrintF(&v100, ", ChUI %s", v10, v11, v12, v13, v14, v15, "yes");
    v32 = v100;

    v16 = v32;
  }

  familyCode = self->_familyCode;
  if (familyCode)
  {
    v99 = v16;
    NSAppendPrintF(&v99, ", Fm %ld", v10, v11, v12, v13, v14, v15, familyCode);
    v34 = v99;

    v16 = v34;
  }

  groupID = self->_groupID;
  if (groupID)
  {
    v98 = v16;
    NSAppendPrintF(&v98, ", GID %@", v10, v11, v12, v13, v14, v15, groupID);
    v36 = v98;

    v16 = v36;
  }

  if ([(NSArray *)self->_LEDs count])
  {
    v97 = v16;
    NSAppendPrintF(&v97, ", LEDs %##@", v37, v38, v39, v40, v41, v42, self->_LEDs);
    v43 = v97;

    v16 = v43;
  }

  v44 = *&self->_maxCapacity;
  if (*&v44 > 0.0)
  {
    v96 = v16;
    NSAppendPrintF(&v96, ", MaxC %.2f%%", v37, v38, v39, v40, v41, v42, v44);
    v45 = v96;

    v16 = v45;
  }

  partID = self->_partID;
  if (partID)
  {
    v95 = v16;
    NSAppendPrintF(&v95, ", PaID %@", v37, v38, v39, v40, v41, v42, partID);
    v47 = v95;

    v16 = v47;
  }

  productID = self->_productID;
  if (productID)
  {
    v94 = v16;
    NSAppendPrintF(&v94, ", PdID %ld", v37, v38, v39, v40, v41, v42, productID);
    v49 = v94;

    v16 = v49;
  }

  vendorID = self->_vendorID;
  if (vendorID)
  {
    v93 = v16;
    NSAppendPrintF(&v93, ", VeID %ld", v37, v38, v39, v40, v41, v42, vendorID);
    v51 = v93;

    v16 = v51;
  }

  temperature = self->_temperature;
  if (temperature)
  {
    v92 = v16;
    NSAppendPrintF(&v92, ", Tmp %ld", v37, v38, v39, v40, v41, v42, temperature);
    v53 = v92;

    v16 = v53;
  }

  type = self->_type;
  if (type)
  {
    v91 = v16;
    NSAppendPrintF(&v91, ", Typ '%@'", v37, v38, v39, v40, v41, v42, type);
    v55 = v91;

    v16 = v55;
  }

  transportType = self->_transportType;
  if (transportType)
  {
    v90 = v16;
    NSAppendPrintF(&v90, ", TPT '%@'", v37, v38, v39, v40, v41, v42, transportType);
    v57 = v90;

    v16 = v57;
  }

  name = self->_name;
  if (name)
  {
    v89 = v16;
    NSAppendPrintF(&v89, ", Nm '%@'", v37, v38, v39, v40, v41, v42, name);
    v59 = v89;

    v16 = v59;
  }

  if (self->_chargeLevel != 0.0)
  {
    v88 = v16;
    v60 = 45;
    if (self->_charging)
    {
      v60 = 43;
    }

    NSAppendPrintF(&v88, ", L %c%.2f%%", v37, v38, v39, v40, v41, v42, v60);
    v61 = v88;

    v16 = v61;
  }

  powerState = self->_powerState;
  if (powerState)
  {
    v87 = v16;
    if (powerState > 3)
    {
      v63 = "?";
    }

    else
    {
      v63 = off_1E73A3B08[powerState - 1];
    }

    NSAppendPrintF(&v87, ", St %s", v37, v38, v39, v40, v41, v42, v63);
    v64 = v87;

    v16 = v64;
  }

  if ((self->_aggregate || self->_expectedComponents) && ![(CUPowerSource *)self isAggregateComponent])
  {
    v86 = v16;
    NSAppendPrintF(&v86, ", Components: ", v65, v66, v67, v68, v69, v70, v81);
    v71 = v86;

    if (self->_subLeft)
    {
      v85 = v71;
      NSAppendPrintF(&v85, "L", v72, v73, v74, v75, v76, v77, v82);
      v78 = v85;

      v71 = v78;
    }

    if (self->_subRight)
    {
      v84 = v71;
      NSAppendPrintF(&v84, "R", v72, v73, v74, v75, v76, v77, v82);
      v79 = v84;

      v71 = v79;
    }

    if (self->_subCase)
    {
      v83 = v71;
      NSAppendPrintF(&v83, "C", v72, v73, v74, v75, v76, v77, v82);
      v16 = v83;
    }

    else
    {
      v16 = v71;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = self->_adapterSourceID ^ self->_sourceID;
  v4 = v3 ^ [(NSString *)self->_accessoryID hash];
  v5 = [(NSString *)self->_groupID hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_accessoryCategory hash];
  return v6 ^ [(NSString *)self->_partID hash];
}

- (BOOL)hasAllComponents
{
  result = 1;
  if (self->_aggregate)
  {
    expectedComponents = self->_expectedComponents;
    if ((expectedComponents & 1) != 0 && !self->_subLeft)
    {
      return 0;
    }

    if ((expectedComponents & 2) != 0 && !self->_subRight || (expectedComponents & 4) != 0 && !self->_subCase)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sourceID = self->_sourceID;
    if (sourceID == [v4 sourceID])
    {
      adapterSourceID = self->_adapterSourceID;
      if (adapterSourceID == [v4 adapterSourceID])
      {
        accessoryID = self->_accessoryID;
        v8 = [v4 accessoryID];
        v9 = accessoryID;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          if ((v9 != 0) == (v10 == 0))
          {
            v13 = 0;
            v17 = v10;
LABEL_32:

            goto LABEL_33;
          }

          v12 = [(NSString *)v9 isEqual:v10];

          if (!v12)
          {
            v13 = 0;
LABEL_34:

            goto LABEL_9;
          }
        }

        groupID = self->_groupID;
        v16 = [v4 groupID];
        v17 = groupID;
        v18 = v16;
        v9 = v18;
        if (v17 == v18)
        {
        }

        else
        {
          if ((v17 != 0) == (v18 == 0))
          {
            v13 = 0;
            v22 = v18;
LABEL_31:

            goto LABEL_32;
          }

          v19 = [(NSString *)v17 isEqual:v18];

          if (!v19)
          {
            v13 = 0;
LABEL_33:

            goto LABEL_34;
          }
        }

        accessoryCategory = self->_accessoryCategory;
        v21 = [v4 accessoryCategory];
        v22 = accessoryCategory;
        v23 = v21;
        v17 = v23;
        if (v22 == v23)
        {
        }

        else
        {
          if ((v22 != 0) == (v23 == 0))
          {
            v13 = 0;
            v27 = v23;
LABEL_30:

            goto LABEL_31;
          }

          v24 = [(NSString *)v22 isEqual:v23];

          if (!v24)
          {
            v13 = 0;
            goto LABEL_32;
          }
        }

        partID = self->_partID;
        v26 = [v4 partID];
        v27 = partID;
        v28 = v26;
        v22 = v28;
        if (v27 == v28)
        {
          v13 = 1;
        }

        else if ((v27 != 0) == (v28 == 0))
        {
          v13 = 0;
        }

        else
        {
          v13 = [(NSString *)v27 isEqual:v28];
        }

        goto LABEL_30;
      }
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (void)dealloc
{
  [(CUPowerSource *)self invalidate];
  v3.receiver = self;
  v3.super_class = CUPowerSource;
  [(CUPowerSource *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v30 = a3;
  accessoryCategory = self->_accessoryCategory;
  if (accessoryCategory)
  {
    [v30 encodeObject:accessoryCategory forKey:@"accessoryCategory"];
  }

  accessoryID = self->_accessoryID;
  if (accessoryID)
  {
    [v30 encodeObject:accessoryID forKey:@"accessoryID"];
  }

  adapterErrorFlags = self->_adapterErrorFlags;
  if (adapterErrorFlags)
  {
    [v30 encodeInteger:adapterErrorFlags forKey:@"adapterErrorFlag"];
  }

  adapterFamilyCode = self->_adapterFamilyCode;
  if (adapterFamilyCode)
  {
    [v30 encodeInteger:adapterFamilyCode forKey:@"adapterFamilyCode"];
  }

  adapterName = self->_adapterName;
  if (adapterName)
  {
    [v30 encodeObject:adapterName forKey:@"adapterName"];
  }

  if (self->_adapterSharedSource)
  {
    [v30 encodeBool:1 forKey:@"adapterSharedSource"];
  }

  adapterSourceID = self->_adapterSourceID;
  if (adapterSourceID)
  {
    [v30 encodeInteger:adapterSourceID forKey:@"adapterSourceID"];
  }

  if (self->_aggregate)
  {
    [v30 encodeBool:1 forKey:@"aggregate"];
  }

  if (self->_charging)
  {
    [v30 encodeBool:1 forKey:@"charging"];
  }

  if (self->_chargeLevel > 0.0)
  {
    [v30 encodeDouble:@"chargeLevel" forKey:?];
  }

  familyCode = self->_familyCode;
  if (familyCode)
  {
    [v30 encodeInteger:familyCode forKey:@"familyCode"];
  }

  groupID = self->_groupID;
  if (groupID)
  {
    [v30 encodeObject:groupID forKey:@"groupID"];
  }

  if ([(NSArray *)self->_LEDs count])
  {
    [v30 encodeObject:self->_LEDs forKey:@"LEDs"];
  }

  if (self->_maxCapacity > 0.0)
  {
    [v30 encodeDouble:@"maxCapacity" forKey:?];
  }

  name = self->_name;
  v13 = v30;
  if (name)
  {
    [v30 encodeObject:name forKey:@"name"];
    v13 = v30;
  }

  partID = self->_partID;
  if (partID)
  {
    [v30 encodeObject:partID forKey:@"partID"];
    v13 = v30;
  }

  partName = self->_partName;
  if (partName)
  {
    [v30 encodeObject:partName forKey:@"partName"];
    v13 = v30;
  }

  powerState = self->_powerState;
  if (powerState)
  {
    [v30 encodeInteger:powerState forKey:@"powerState"];
    v13 = v30;
  }

  productID = self->_productID;
  if (productID)
  {
    [v30 encodeInteger:productID forKey:@"productID"];
    v13 = v30;
  }

  role = self->_role;
  if (role)
  {
    [v30 encodeInteger:role forKey:@"role"];
    v13 = v30;
  }

  sourceID = self->_sourceID;
  if (sourceID)
  {
    [v30 encodeInteger:sourceID forKey:@"sourceID"];
    v13 = v30;
  }

  state = self->_state;
  if (state)
  {
    [v30 encodeObject:state forKey:@"state"];
    v13 = v30;
  }

  subLeft = self->_subLeft;
  if (subLeft)
  {
    [v30 encodeObject:subLeft forKey:@"subLeft"];
    v13 = v30;
  }

  subRight = self->_subRight;
  if (subRight)
  {
    [v30 encodeObject:subRight forKey:@"subRight"];
    v13 = v30;
  }

  subCase = self->_subCase;
  if (subCase)
  {
    [v30 encodeObject:subCase forKey:@"subCase"];
    v13 = v30;
  }

  subMain = self->_subMain;
  if (subMain)
  {
    [v30 encodeObject:subMain forKey:@"subMain"];
    v13 = v30;
  }

  temperature = self->_temperature;
  if (temperature)
  {
    [v30 encodeInteger:temperature forKey:@"temperature"];
    v13 = v30;
  }

  transportType = self->_transportType;
  if (transportType)
  {
    [v30 encodeObject:transportType forKey:@"transportType"];
    v13 = v30;
  }

  type = self->_type;
  if (type)
  {
    [v30 encodeObject:type forKey:@"type"];
    v13 = v30;
  }

  vendorID = self->_vendorID;
  if (vendorID)
  {
    [v30 encodeInteger:vendorID forKey:@"vendorID"];
    v13 = v30;
  }

  ioKitDescription = self->_ioKitDescription;
  if (ioKitDescription)
  {
    [v30 encodeObject:ioKitDescription forKey:@"ioKitDictionary"];
    v13 = v30;
  }

  if (self->_present)
  {
    [v30 encodeBool:1 forKey:@"present"];
    v13 = v30;
  }
}

- (void)_updateWithCoder:(id)a3
{
  v4 = a3;
  accessoryCategory = self->_accessoryCategory;
  self->_accessoryCategory = 0;

  v6 = v4;
  v7 = objc_opt_class();
  NSDecodeObjectIfPresent(v6, @"accessoryCategory", v7, &self->_accessoryCategory);

  accessoryID = self->_accessoryID;
  self->_accessoryID = 0;

  v9 = v6;
  v10 = objc_opt_class();
  NSDecodeObjectIfPresent(v9, @"accessoryID", v10, &self->_accessoryID);

  self->_adapterErrorFlags = 0;
  v11 = v9;
  if ([v11 containsValueForKey:@"adapterErrorFlag"])
  {
    self->_adapterErrorFlags = [v11 decodeIntegerForKey:@"adapterErrorFlag"];
  }

  self->_adapterFamilyCode = 0;
  v12 = v11;
  if ([v12 containsValueForKey:@"adapterFamilyCode"])
  {
    self->_adapterFamilyCode = [v12 decodeIntegerForKey:@"adapterFamilyCode"];
  }

  adapterName = self->_adapterName;
  self->_adapterName = 0;

  v14 = v12;
  v15 = objc_opt_class();
  NSDecodeObjectIfPresent(v14, @"adapterName", v15, &self->_adapterName);

  self->_adapterSharedSource = 0;
  v16 = v14;
  if ([v16 containsValueForKey:@"adapterSharedSource"])
  {
    self->_adapterSharedSource = [v16 decodeBoolForKey:@"adapterSharedSource"];
  }

  self->_adapterSourceID = 0;
  v17 = v16;
  if ([v17 containsValueForKey:@"adapterSourceID"])
  {
    self->_adapterSourceID = [v17 decodeIntegerForKey:@"adapterSourceID"];
  }

  self->_aggregate = 0;
  v18 = v17;
  if ([v18 containsValueForKey:@"aggregate"])
  {
    self->_aggregate = [v18 decodeBoolForKey:@"aggregate"];
  }

  self->_charging = 0;
  v19 = v18;
  if ([v19 containsValueForKey:@"charging"])
  {
    self->_charging = [v19 decodeBoolForKey:@"charging"];
  }

  self->_chargeLevel = 0.0;
  v20 = v19;
  if ([v20 containsValueForKey:@"chargeLevel"])
  {
    [v20 decodeDoubleForKey:@"chargeLevel"];
    self->_chargeLevel = v21;
  }

  self->_familyCode = 0;
  v22 = v20;
  if ([v22 containsValueForKey:@"familyCode"])
  {
    self->_familyCode = [v22 decodeIntegerForKey:@"familyCode"];
  }

  groupID = self->_groupID;
  self->_groupID = 0;

  v24 = v22;
  v25 = objc_opt_class();
  NSDecodeObjectIfPresent(v24, @"groupID", v25, &self->_groupID);

  LEDs = self->_LEDs;
  self->_LEDs = 0;

  v27 = objc_opt_class();
  NSDecodeNSArrayOfClassIfPresent(v24, @"LEDs", v27, &self->_LEDs);
  self->_maxCapacity = 0.0;
  v28 = v24;
  if ([v28 containsValueForKey:@"maxCapacity"])
  {
    [v28 decodeDoubleForKey:@"maxCapacity"];
    self->_maxCapacity = v29;
  }

  name = self->_name;
  self->_name = 0;

  v31 = v28;
  v32 = objc_opt_class();
  NSDecodeObjectIfPresent(v31, @"name", v32, &self->_name);

  partID = self->_partID;
  self->_partID = 0;

  v34 = v31;
  v35 = objc_opt_class();
  NSDecodeObjectIfPresent(v34, @"partID", v35, &self->_partID);

  partName = self->_partName;
  self->_partName = 0;

  v37 = v34;
  v38 = objc_opt_class();
  NSDecodeObjectIfPresent(v37, @"partName", v38, &self->_partName);

  self->_powerState = 0;
  v64 = 0;
  if (NSDecodeSInt64RangedIfPresent(v37, @"powerState", 0xFFFFFFFF80000000, 0x7FFFFFFFLL, &v64))
  {
    self->_powerState = v64;
  }

  self->_productID = 0;
  v39 = v37;
  if ([v39 containsValueForKey:@"productID"])
  {
    self->_productID = [v39 decodeIntegerForKey:@"productID"];
  }

  self->_role = 0;
  v64 = 0;
  if (NSDecodeSInt64RangedIfPresent(v39, @"role", 0xFFFFFFFF80000000, 0x7FFFFFFFLL, &v64))
  {
    self->_role = v64;
  }

  self->_sourceID = 0;
  v40 = v39;
  if ([v40 containsValueForKey:@"sourceID"])
  {
    self->_sourceID = [v40 decodeIntegerForKey:@"sourceID"];
  }

  state = self->_state;
  self->_state = 0;

  v42 = v40;
  v43 = objc_opt_class();
  NSDecodeObjectIfPresent(v42, @"state", v43, &self->_state);

  subLeft = self->_subLeft;
  self->_subLeft = 0;

  v45 = objc_opt_class();
  NSDecodeObjectIfPresent(v42, @"subLeft", v45, &self->_subLeft);
  subRight = self->_subRight;
  self->_subRight = 0;

  v47 = objc_opt_class();
  NSDecodeObjectIfPresent(v42, @"subRight", v47, &self->_subRight);
  subCase = self->_subCase;
  self->_subCase = 0;

  v49 = objc_opt_class();
  NSDecodeObjectIfPresent(v42, @"subCase", v49, &self->_subCase);
  subMain = self->_subMain;
  self->_subMain = 0;

  v51 = objc_opt_class();
  NSDecodeObjectIfPresent(v42, @"subMain", v51, &self->_subMain);
  self->_temperature = 0;
  v52 = v42;
  if ([v52 containsValueForKey:@"temperature"])
  {
    self->_temperature = [v52 decodeIntegerForKey:@"temperature"];
  }

  transportType = self->_transportType;
  self->_transportType = 0;

  v54 = v52;
  v55 = objc_opt_class();
  NSDecodeObjectIfPresent(v54, @"transportType", v55, &self->_transportType);

  type = self->_type;
  self->_type = 0;

  v57 = v54;
  v58 = objc_opt_class();
  NSDecodeObjectIfPresent(v57, @"type", v58, &self->_type);

  self->_vendorID = 0;
  v59 = v57;
  if ([v59 containsValueForKey:@"vendorID"])
  {
    self->_vendorID = [v59 decodeIntegerForKey:@"vendorID"];
  }

  ioKitDescription = self->_ioKitDescription;
  self->_ioKitDescription = 0;

  v61 = v59;
  v62 = objc_opt_class();
  NSDecodeStandardContainerIfPresent(v61, @"ioKitDictionary", v62, &self->_ioKitDescription);

  self->_present = 0;
  v63 = v61;
  if ([v63 containsValueForKey:@"present"])
  {
    self->_present = [v63 decodeBoolForKey:@"present"];
  }
}

- (CUPowerSource)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CUPowerSource;
  v5 = [(CUPowerSource *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(CUPowerSource *)v5 _updateWithCoder:v4];
    v7 = v6;
  }

  return v6;
}

@end