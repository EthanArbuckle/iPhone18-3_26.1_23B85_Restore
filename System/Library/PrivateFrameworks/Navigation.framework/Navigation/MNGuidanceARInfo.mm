@interface MNGuidanceARInfo
- ($1AB5FA073B851C12C2339EC22442E995)locationCoordinate;
- (BOOL)_isInstructionStringOutputEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (GEOPolylineCoordinateRange)locationCoordinateRange;
- (MNGuidanceARInfo)init;
- (MNGuidanceARInfo)initWithCoder:(id)coder;
- (MNGuidanceARInfo)initWithEventID:(id)d type:(int)type maneuverType:(int)maneuverType instruction:(id)instruction variableOverrides:(id)overrides arrowLabel:(id)label locationCoordinate:(id)coordinate maneuverRoadName:(id)self0 heading:(double)self1 stepIndex:(unint64_t)self2;
- (MNGuidanceARInfo)initWithEventID:(id)d type:(int)type maneuverType:(int)maneuverType instruction:(id)instruction variableOverrides:(id)overrides arrowLabel:(id)label locationCoordinateRange:(GEOPolylineCoordinateRange)range maneuverRoadName:(id)self0 stepIndex:(unint64_t)self1;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNGuidanceARInfo

- (GEOPolylineCoordinateRange)locationCoordinateRange
{
  end = self->_locationCoordinateRange.end;
  start = self->_locationCoordinateRange.start;
  result.end = end;
  result.start = start;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)locationCoordinate
{
  latitude = self->_locationCoordinate.latitude;
  longitude = self->_locationCoordinate.longitude;
  altitude = self->_locationCoordinate.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  guidanceEventID = self->_guidanceEventID;
  coderCopy = coder;
  [coderCopy encodeObject:guidanceEventID forKey:@"_guidanceEventID"];
  [coderCopy encodeInteger:self->_eventType forKey:@"_eventType"];
  [coderCopy encodeInteger:self->_maneuverType forKey:@"_maneuverType"];
  [coderCopy encodeObject:self->_instructionString forKey:@"_instructionString"];
  [coderCopy encodeObject:self->_instruction forKey:@"_instruction"];
  [coderCopy encodeObject:self->_variableOverrides forKey:@"_variableOverrides"];
  [coderCopy encodeObject:self->_arrowLabel forKey:@"_arrowLabel"];
  [coderCopy encodeBytes:&self->_locationCoordinate length:24 forKey:@"_locationCoordinate"];
  [coderCopy encodeBytes:&self->_locationCoordinateRange length:16 forKey:@"_locationCoordinateRange"];
  [coderCopy encodeObject:self->_maneuverRoadName forKey:@"_maneuverRoadName"];
  [coderCopy encodeDouble:@"_heading" forKey:self->_heading];
  [coderCopy encodeInteger:self->_stepIndex forKey:@"_stepIndex"];
}

- (MNGuidanceARInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = MNGuidanceARInfo;
  v5 = [(MNGuidanceARInfo *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_guidanceEventID"];
    guidanceEventID = v5->_guidanceEventID;
    v5->_guidanceEventID = v6;

    v5->_eventType = [coderCopy decodeIntegerForKey:@"_eventType"];
    v5->_maneuverType = [coderCopy decodeIntegerForKey:@"_maneuverType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_instructionString"];
    instructionString = v5->_instructionString;
    v5->_instructionString = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_instruction"];
    instruction = v5->_instruction;
    v5->_instruction = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"_variableOverrides"];
    variableOverrides = v5->_variableOverrides;
    v5->_variableOverrides = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_arrowLabel"];
    arrowLabel = v5->_arrowLabel;
    v5->_arrowLabel = v18;

    v28 = 0;
    v20 = [coderCopy decodeBytesForKey:@"_locationCoordinate" returnedLength:&v28];
    if (v28 && v20)
    {
      if (v28 >= 0x18)
      {
        v21 = 24;
      }

      else
      {
        v21 = v28;
      }

      memcpy(&v5->_locationCoordinate, v20, v21);
    }

    v28 = 0;
    v22 = [coderCopy decodeBytesForKey:@"_locationCoordinateRange" returnedLength:&v28];
    if (v28 && v22)
    {
      if (v28 >= 0x10)
      {
        v23 = 16;
      }

      else
      {
        v23 = v28;
      }

      memcpy(&v5->_locationCoordinateRange, v22, v23);
    }

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_maneuverRoadName"];
    maneuverRoadName = v5->_maneuverRoadName;
    v5->_maneuverRoadName = v24;

    [coderCopy decodeDoubleForKey:@"_heading"];
    v5->_heading = v26;
    v5->_stepIndex = [coderCopy decodeIntegerForKey:@"_stepIndex"];
  }

  return v5;
}

- (unint64_t)hash
{
  guidanceEventID = [(MNGuidanceARInfo *)self guidanceEventID];
  v4 = [guidanceEventID hash];

  v5 = 31 * (31 * v4 + [(MNGuidanceARInfo *)self eventType]);
  v6 = v5 + [(MNGuidanceARInfo *)self maneuverType];
  instructionString = [(MNGuidanceARInfo *)self instructionString];
  v8 = [instructionString hash] - v6 + 32 * v6;

  instruction = [(MNGuidanceARInfo *)self instruction];
  v10 = [instruction hash] - v8 + 32 * v8;

  arrowLabel = [(MNGuidanceARInfo *)self arrowLabel];
  v12 = [arrowLabel hash] - v10 + 32 * v10;

  [(MNGuidanceARInfo *)self locationCoordinate];
  v14 = (v13 * 1000000.0) - v12 + 32 * v12;
  [(MNGuidanceARInfo *)self locationCoordinate];
  v16 = (v15 * 1000000.0) - v14 + 32 * v14;
  [(MNGuidanceARInfo *)self locationCoordinate];
  v18 = 31 * ((v17 * 1000000.0) - v16 + 32 * v16) + [(MNGuidanceARInfo *)self locationCoordinateRange];
  v19 = 31 * ((COERCE_FLOAT([(MNGuidanceARInfo *)self locationCoordinateRange]>> 32) * 1000000.0) - v18 + 32 * v18);
  [(MNGuidanceARInfo *)self locationCoordinateRange];
  v21 = v19 + v20;
  [(MNGuidanceARInfo *)self locationCoordinateRange];
  return (v22 * 1000000.0) - v21 + 32 * v21 + 0x52DC8CFCE1DDC99FLL;
}

- (BOOL)_isInstructionStringOutputEqual:(id)equal
{
  equalCopy = equal;
  instructionString = [(MNGuidanceARInfo *)self instructionString];
  if (instructionString)
  {
  }

  else
  {
    instructionString2 = [equalCopy instructionString];

    if (!instructionString2)
    {
      v15 = 1;
      goto LABEL_5;
    }
  }

  instructionString3 = [(MNGuidanceARInfo *)self instructionString];
  defaultOptions = [instructionString3 defaultOptions];

  [defaultOptions setShouldUpdateFormatStrings:1];
  instructionString4 = [(MNGuidanceARInfo *)self instructionString];
  v10 = [instructionString4 composedStringWithOptions:defaultOptions];

  instructionString5 = [equalCopy instructionString];
  defaultOptions2 = [instructionString5 defaultOptions];

  [defaultOptions2 setShouldUpdateFormatStrings:1];
  instructionString6 = [equalCopy instructionString];
  v14 = [instructionString6 composedStringWithOptions:defaultOptions2];

  v15 = [v10 isEqual:v14];
LABEL_5:

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  v104 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
    goto LABEL_15;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v8 = equalCopy;
    guidanceEventID = [(MNGuidanceARInfo *)self guidanceEventID];
    guidanceEventID2 = [(MNGuidanceARInfo *)v8 guidanceEventID];
    if (![guidanceEventID isEqual:guidanceEventID2] || (v11 = -[MNGuidanceARInfo eventType](self, "eventType"), v11 != -[MNGuidanceARInfo eventType](v8, "eventType")) || (v12 = -[MNGuidanceARInfo maneuverType](self, "maneuverType"), v12 != -[MNGuidanceARInfo maneuverType](v8, "maneuverType")))
    {
      v7 = 0;
LABEL_14:

      goto LABEL_15;
    }

    instruction = [(MNGuidanceARInfo *)self instruction];
    instruction2 = [(MNGuidanceARInfo *)v8 instruction];
    v15 = instruction;
    v16 = instruction2;
    arrowLabel2 = v16;
    if (!(v15 | v16))
    {
LABEL_9:
      v92 = v15;
      v18 = arrowLabel2;
      arrowLabel = [(MNGuidanceARInfo *)self arrowLabel];
      if (arrowLabel || ([(MNGuidanceARInfo *)v8 arrowLabel], (v98 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        arrowLabel2 = [(MNGuidanceARInfo *)self arrowLabel];
        arrowLabel3 = [(MNGuidanceARInfo *)v8 arrowLabel];
        if (![arrowLabel2 isEqual:arrowLabel3])
        {
          v7 = 0;
          goto LABEL_48;
        }

        v20 = 1;
      }

      else
      {
        v20 = 0;
        v98 = 0;
      }

      [(MNGuidanceARInfo *)self locationCoordinate];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      [(MNGuidanceARInfo *)v8 locationCoordinate];
      if (vabdd_f64(v49, v56) >= 0.000000999999997 || vabdd_f64(v51, v54) >= 0.000000999999997)
      {
        v7 = 0;
        if ((v20 & 1) == 0)
        {
LABEL_49:
          arrowLabel2 = v18;
          if (!arrowLabel)
          {
          }

          v15 = v92;
          goto LABEL_87;
        }
      }

      else if (vabdd_f64(v53, v55) < 0.000000999999997 && ([(MNGuidanceARInfo *)self locationCoordinateRange], [(MNGuidanceARInfo *)v8 locationCoordinateRange], GEOPolylineCoordinateRangeEqual()))
      {
        v7 = [(MNGuidanceARInfo *)self _isInstructionStringOutputEqual:v8];
        if ((v20 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v7 = 0;
        if (!v20)
        {
          goto LABEL_49;
        }
      }

LABEL_48:

      goto LABEL_49;
    }

    if ((v15 == 0) != (v16 == 0))
    {
      goto LABEL_85;
    }

    formatStrings = [v15 formatStrings];
    formatStrings2 = [arrowLabel2 formatStrings];
    v25 = formatStrings;
    v26 = formatStrings2;
    v27 = v26;
    if (v25 | v26)
    {
      if ((v25 == 0) != (v26 == 0) || (v39 = [v25 count], v39 != objc_msgSend(v27, "count")))
      {

LABEL_39:
        goto LABEL_84;
      }

      v98 = v27;
      v77 = arrowLabel2;
      v93 = v15;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v84 = v25;
      obj = v25;
      v40 = [obj countByEnumeratingWithState:&v99 objects:v103 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = 0;
        v97 = *v100;
        while (2)
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v100 != v97)
            {
              objc_enumerationMutation(obj);
            }

            v44 = *(*(&v99 + 1) + 8 * i);
            v45 = [v98 objectAtIndexedSubscript:{v42, v77}];
            if (v44 | v45)
            {
              v46 = v45;
              v47 = [v44 isEqual:v45];

              if (!v47)
              {

                v27 = v98;
                v15 = v93;
                arrowLabel2 = v77;
                v25 = v84;
                goto LABEL_39;
              }
            }

            ++v42;
          }

          v41 = [obj countByEnumeratingWithState:&v99 objects:v103 count:16];
          if (v41)
          {
            continue;
          }

          break;
        }
      }

      v15 = v93;
      arrowLabel2 = v77;
      v25 = v84;
    }

    else
    {
      v98 = v26;
    }

    separators = [v15 separators];
    separators2 = [arrowLabel2 separators];
    v30 = separators;
    v31 = separators2;
    v32 = v30;
    v96 = v31;
    if (v30 | v31)
    {
      v57 = v31;
      if ((v32 == 0) != (v31 == 0) || (v58 = [v32 count], v59 = v58 == objc_msgSend(v96, "count"), v57 = v96, !v59))
      {

        v68 = v57;
LABEL_68:
        v69 = v98;
LABEL_83:

LABEL_84:
LABEL_85:

        goto LABEL_86;
      }

      v82 = v32;
      v85 = v25;
      v78 = arrowLabel2;
      v94 = v15;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v86 = v32;
      v60 = [v86 countByEnumeratingWithState:&v99 objects:v103 count:16];
      if (v60)
      {
        v61 = v60;
        v62 = 0;
        obja = *v100;
        while (2)
        {
          for (j = 0; j != v61; ++j)
          {
            if (*v100 != obja)
            {
              objc_enumerationMutation(v86);
            }

            v64 = *(*(&v99 + 1) + 8 * j);
            v65 = [v57 objectAtIndexedSubscript:{v62, v78}];
            if (v64 | v65)
            {
              v66 = v65;
              v67 = [v64 isEqual:v65];

              if (!v67)
              {

                v68 = v96;
                v15 = v94;
                arrowLabel2 = v78;
                v32 = v82;
                v25 = v85;
                goto LABEL_68;
              }
            }

            ++v62;
            v57 = v96;
          }

          v61 = [v86 countByEnumeratingWithState:&v99 objects:v103 count:16];
          if (v61)
          {
            continue;
          }

          break;
        }
      }

      v15 = v94;
      arrowLabel2 = v78;
      v25 = v85;
    }

    else
    {
      v82 = v30;
    }

    formatTokens = [v15 formatTokens];
    formatTokens2 = [arrowLabel2 formatTokens];
    v35 = formatTokens;
    v36 = formatTokens2;
    v37 = v36;
    if (!(v35 | v36))
    {
      v81 = v35;
      v83 = v25;
LABEL_23:
      arrowLabel3 = [v15 alternativeString];
      alternativeString = [arrowLabel2 alternativeString];
      if (!(arrowLabel3 | alternativeString))
      {

        goto LABEL_9;
      }

      v76 = alternativeString;
      objc = [arrowLabel3 isEqual:alternativeString];

      if (objc)
      {
        goto LABEL_9;
      }

LABEL_86:
      v7 = 0;
LABEL_87:

      goto LABEL_14;
    }

    if ((v35 == 0) == (v36 == 0))
    {
      v81 = v35;
      v70 = [v35 count];
      v59 = v70 == [v37 count];
      v35 = v81;
      if (v59)
      {
        v83 = v25;
        v79 = arrowLabel2;
        v95 = v15;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v80 = v81;
        objb = [v80 countByEnumeratingWithState:&v99 objects:v103 count:16];
        if (objb)
        {
          v71 = 0;
          v87 = *v100;
          while (2)
          {
            for (k = 0; k != objb; k = k + 1)
            {
              if (*v100 != v87)
              {
                objc_enumerationMutation(v80);
              }

              v73 = *(*(&v99 + 1) + 8 * k);
              v74 = v37;
              v75 = [v37 objectAtIndexedSubscript:{v71, v79}];
              LODWORD(v73) = GEOServerFormatTokenEqual();

              if (!v73)
              {

                v15 = v95;
                arrowLabel2 = v79;
                v25 = v83;
                goto LABEL_82;
              }

              ++v71;
              v37 = v74;
            }

            objb = [v80 countByEnumeratingWithState:&v99 objects:v103 count:16];
            if (objb)
            {
              continue;
            }

            break;
          }
        }

        v15 = v95;
        arrowLabel2 = v79;
        goto LABEL_23;
      }
    }

LABEL_82:
    v68 = v96;
    v69 = v98;
    v32 = v82;
    goto LABEL_83;
  }

  v7 = 0;
LABEL_15:

  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  eventType = self->_eventType;
  if (eventType >= 3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
  }

  else
  {
    v5 = off_1E842F4B8[eventType];
  }

  v6 = [v3 stringWithFormat:@"ar event: %@\n\tinstruction: %@", v5, self->_instructionString];

  if (self->_arrowLabel)
  {
    v7 = [v6 stringByAppendingFormat:@"\n\tarrowLabel: %@", self->_arrowLabel];

    v6 = v7;
  }

  v8 = @"LEFT_TURN";
  switch(self->_maneuverType)
  {
    case 0:
      goto LABEL_70;
    case 1:
      goto LABEL_69;
    case 2:
      v8 = @"RIGHT_TURN";
      goto LABEL_69;
    case 3:
      v8 = @"STRAIGHT_AHEAD";
      goto LABEL_69;
    case 4:
      v8 = @"U_TURN";
      goto LABEL_69;
    case 5:
      v8 = @"FOLLOW_ROAD";
      goto LABEL_69;
    case 6:
      v8 = @"ENTER_ROUNDABOUT";
      goto LABEL_69;
    case 7:
      v8 = @"EXIT_ROUNDABOUT";
      goto LABEL_69;
    case 0xB:
      v8 = @"OFF_RAMP";
      goto LABEL_69;
    case 0xC:
      v8 = @"ON_RAMP";
      goto LABEL_69;
    case 0x10:
      v8 = @"ARRIVE_END_OF_NAVIGATION";
      goto LABEL_69;
    case 0x11:
      v8 = @"START_ROUTE";
      goto LABEL_69;
    case 0x12:
      v8 = @"ARRIVE_AT_DESTINATION";
      goto LABEL_69;
    case 0x14:
      v8 = @"KEEP_LEFT";
      goto LABEL_69;
    case 0x15:
      v8 = @"KEEP_RIGHT";
      goto LABEL_69;
    case 0x16:
      v8 = @"ENTER_FERRY";
      goto LABEL_69;
    case 0x17:
      v8 = @"EXIT_FERRY";
      goto LABEL_69;
    case 0x18:
      v8 = @"CHANGE_FERRY";
      goto LABEL_69;
    case 0x19:
      v8 = @"START_ROUTE_WITH_U_TURN";
      goto LABEL_69;
    case 0x1A:
      v8 = @"U_TURN_AT_ROUNDABOUT";
      goto LABEL_69;
    case 0x1B:
      v8 = @"LEFT_TURN_AT_END";
      goto LABEL_69;
    case 0x1C:
      v8 = @"RIGHT_TURN_AT_END";
      goto LABEL_69;
    case 0x1D:
      v8 = @"HIGHWAY_OFF_RAMP_LEFT";
      goto LABEL_69;
    case 0x1E:
      v8 = @"HIGHWAY_OFF_RAMP_RIGHT";
      goto LABEL_69;
    case 0x21:
      v8 = @"ARRIVE_AT_DESTINATION_LEFT";
      goto LABEL_69;
    case 0x22:
      v8 = @"ARRIVE_AT_DESTINATION_RIGHT";
      goto LABEL_69;
    case 0x23:
      v8 = @"U_TURN_WHEN_POSSIBLE";
      goto LABEL_69;
    case 0x27:
      v8 = @"ARRIVE_END_OF_DIRECTIONS";
      goto LABEL_69;
    case 0x29:
      v8 = @"ROUNDABOUT_EXIT_1";
      goto LABEL_69;
    case 0x2A:
      v8 = @"ROUNDABOUT_EXIT_2";
      goto LABEL_69;
    case 0x2B:
      v8 = @"ROUNDABOUT_EXIT_3";
      goto LABEL_69;
    case 0x2C:
      v8 = @"ROUNDABOUT_EXIT_4";
      goto LABEL_69;
    case 0x2D:
      v8 = @"ROUNDABOUT_EXIT_5";
      goto LABEL_69;
    case 0x2E:
      v8 = @"ROUNDABOUT_EXIT_6";
      goto LABEL_69;
    case 0x2F:
      v8 = @"ROUNDABOUT_EXIT_7";
      goto LABEL_69;
    case 0x30:
      v8 = @"ROUNDABOUT_EXIT_8";
      goto LABEL_69;
    case 0x31:
      v8 = @"ROUNDABOUT_EXIT_9";
      goto LABEL_69;
    case 0x32:
      v8 = @"ROUNDABOUT_EXIT_10";
      goto LABEL_69;
    case 0x33:
      v8 = @"ROUNDABOUT_EXIT_11";
      goto LABEL_69;
    case 0x34:
      v8 = @"ROUNDABOUT_EXIT_12";
      goto LABEL_69;
    case 0x35:
      v8 = @"ROUNDABOUT_EXIT_13";
      goto LABEL_69;
    case 0x36:
      v8 = @"ROUNDABOUT_EXIT_14";
      goto LABEL_69;
    case 0x37:
      v8 = @"ROUNDABOUT_EXIT_15";
      goto LABEL_69;
    case 0x38:
      v8 = @"ROUNDABOUT_EXIT_16";
      goto LABEL_69;
    case 0x39:
      v8 = @"ROUNDABOUT_EXIT_17";
      goto LABEL_69;
    case 0x3A:
      v8 = @"ROUNDABOUT_EXIT_18";
      goto LABEL_69;
    case 0x3B:
      v8 = @"ROUNDABOUT_EXIT_19";
      goto LABEL_69;
    case 0x3C:
      v8 = @"SHARP_LEFT_TURN";
      goto LABEL_69;
    case 0x3D:
      v8 = @"SHARP_RIGHT_TURN";
      goto LABEL_69;
    case 0x3E:
      v8 = @"SLIGHT_LEFT_TURN";
      goto LABEL_69;
    case 0x3F:
      v8 = @"SLIGHT_RIGHT_TURN";
      goto LABEL_69;
    case 0x40:
      v8 = @"CHANGE_HIGHWAY";
      goto LABEL_69;
    case 0x41:
      v8 = @"CHANGE_HIGHWAY_LEFT";
      goto LABEL_69;
    case 0x42:
      v8 = @"CHANGE_HIGHWAY_RIGHT";
      goto LABEL_69;
    case 0x50:
      v8 = @"TOLL_STATION";
      goto LABEL_69;
    case 0x51:
      v8 = @"ENTER_TUNNEL";
      goto LABEL_69;
    case 0x52:
      v8 = @"WAYPOINT_STOP";
      goto LABEL_69;
    case 0x53:
      v8 = @"WAYPOINT_STOP_LEFT";
      goto LABEL_69;
    case 0x54:
      v8 = @"WAYPOINT_STOP_RIGHT";
      goto LABEL_69;
    case 0x55:
      v8 = @"RESUME_ROUTE";
      goto LABEL_69;
    case 0x56:
      v8 = @"RESUME_ROUTE_WITH_U_TURN";
      goto LABEL_69;
    case 0x57:
      v8 = @"CUSTOM";
      goto LABEL_69;
    case 0x58:
      v8 = @"TURN_AROUND";
      goto LABEL_69;
    default:
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_maneuverType];
LABEL_69:
      v9 = [v6 stringByAppendingFormat:@"\n\tmaneuverType: %@", v8];

      v6 = v9;
LABEL_70:
      if (fabs(self->_locationCoordinate.longitude) <= 180.0)
      {
        latitude = self->_locationCoordinate.latitude;
        if (latitude >= -90.0 && latitude <= 90.0)
        {
          v11 = [v6 stringByAppendingFormat:@"\n\tlocationCoordinate: %f, %f, %f", *&latitude, *&self->_locationCoordinate.longitude, *&self->_locationCoordinate.altitude];

          v6 = v11;
        }
      }

      if (self->_heading != -1.0)
      {
        v12 = [v6 stringByAppendingFormat:@"\n\theading: %.2lf", *&self->_heading];

        v6 = v12;
      }

      start = self->_locationCoordinateRange.start;
      end = self->_locationCoordinateRange.end;
      if (GEOPolylineCoordinateRangeIsValid())
      {
        v15 = self->_locationCoordinateRange.start;
        v16 = self->_locationCoordinateRange.end;
        v17 = GEOPolylineCoordinateRangeAsString();
        v18 = [v6 stringByAppendingFormat:@"\n\tlocationCoordinateRange %@", v17];

        v6 = v18;
      }

      return v6;
  }
}

- (id)description
{
  eventType = self->_eventType;
  if (eventType >= 3)
  {
    eventType = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", eventType];
  }

  else
  {
    eventType = off_1E842F4B8[eventType];
  }

  v5 = [(__CFString *)eventType stringByReplacingOccurrencesOfString:@"AR_GUIDANCE_TYPE_" withString:&stru_1F4EB6B70];
  capitalizedString = [v5 capitalizedString];

  v7 = [(GEOComposedString *)self->_instructionString optionsWithArgumentHandler:&__block_literal_global_12470];
  [v7 setCreateAttributedString:1];
  v8 = [(GEOComposedString *)self->_instructionString stringWithOptions:v7];
  v9 = [MEMORY[0x1E696AD60] stringWithFormat:@"[%@] %@", capitalizedString, v8];
  v10 = v9;
  if (self->_arrowLabel)
  {
    [v9 appendFormat:@" | %@", self->_arrowLabel];
  }

  v11 = @"LEFT_TURN";
  switch(self->_maneuverType)
  {
    case 0:
      goto LABEL_70;
    case 1:
      goto LABEL_69;
    case 2:
      v11 = @"RIGHT_TURN";
      goto LABEL_69;
    case 3:
      v11 = @"STRAIGHT_AHEAD";
      goto LABEL_69;
    case 4:
      v11 = @"U_TURN";
      goto LABEL_69;
    case 5:
      v11 = @"FOLLOW_ROAD";
      goto LABEL_69;
    case 6:
      v11 = @"ENTER_ROUNDABOUT";
      goto LABEL_69;
    case 7:
      v11 = @"EXIT_ROUNDABOUT";
      goto LABEL_69;
    case 0xB:
      v11 = @"OFF_RAMP";
      goto LABEL_69;
    case 0xC:
      v11 = @"ON_RAMP";
      goto LABEL_69;
    case 0x10:
      v11 = @"ARRIVE_END_OF_NAVIGATION";
      goto LABEL_69;
    case 0x11:
      v11 = @"START_ROUTE";
      goto LABEL_69;
    case 0x12:
      v11 = @"ARRIVE_AT_DESTINATION";
      goto LABEL_69;
    case 0x14:
      v11 = @"KEEP_LEFT";
      goto LABEL_69;
    case 0x15:
      v11 = @"KEEP_RIGHT";
      goto LABEL_69;
    case 0x16:
      v11 = @"ENTER_FERRY";
      goto LABEL_69;
    case 0x17:
      v11 = @"EXIT_FERRY";
      goto LABEL_69;
    case 0x18:
      v11 = @"CHANGE_FERRY";
      goto LABEL_69;
    case 0x19:
      v11 = @"START_ROUTE_WITH_U_TURN";
      goto LABEL_69;
    case 0x1A:
      v11 = @"U_TURN_AT_ROUNDABOUT";
      goto LABEL_69;
    case 0x1B:
      v11 = @"LEFT_TURN_AT_END";
      goto LABEL_69;
    case 0x1C:
      v11 = @"RIGHT_TURN_AT_END";
      goto LABEL_69;
    case 0x1D:
      v11 = @"HIGHWAY_OFF_RAMP_LEFT";
      goto LABEL_69;
    case 0x1E:
      v11 = @"HIGHWAY_OFF_RAMP_RIGHT";
      goto LABEL_69;
    case 0x21:
      v11 = @"ARRIVE_AT_DESTINATION_LEFT";
      goto LABEL_69;
    case 0x22:
      v11 = @"ARRIVE_AT_DESTINATION_RIGHT";
      goto LABEL_69;
    case 0x23:
      v11 = @"U_TURN_WHEN_POSSIBLE";
      goto LABEL_69;
    case 0x27:
      v11 = @"ARRIVE_END_OF_DIRECTIONS";
      goto LABEL_69;
    case 0x29:
      v11 = @"ROUNDABOUT_EXIT_1";
      goto LABEL_69;
    case 0x2A:
      v11 = @"ROUNDABOUT_EXIT_2";
      goto LABEL_69;
    case 0x2B:
      v11 = @"ROUNDABOUT_EXIT_3";
      goto LABEL_69;
    case 0x2C:
      v11 = @"ROUNDABOUT_EXIT_4";
      goto LABEL_69;
    case 0x2D:
      v11 = @"ROUNDABOUT_EXIT_5";
      goto LABEL_69;
    case 0x2E:
      v11 = @"ROUNDABOUT_EXIT_6";
      goto LABEL_69;
    case 0x2F:
      v11 = @"ROUNDABOUT_EXIT_7";
      goto LABEL_69;
    case 0x30:
      v11 = @"ROUNDABOUT_EXIT_8";
      goto LABEL_69;
    case 0x31:
      v11 = @"ROUNDABOUT_EXIT_9";
      goto LABEL_69;
    case 0x32:
      v11 = @"ROUNDABOUT_EXIT_10";
      goto LABEL_69;
    case 0x33:
      v11 = @"ROUNDABOUT_EXIT_11";
      goto LABEL_69;
    case 0x34:
      v11 = @"ROUNDABOUT_EXIT_12";
      goto LABEL_69;
    case 0x35:
      v11 = @"ROUNDABOUT_EXIT_13";
      goto LABEL_69;
    case 0x36:
      v11 = @"ROUNDABOUT_EXIT_14";
      goto LABEL_69;
    case 0x37:
      v11 = @"ROUNDABOUT_EXIT_15";
      goto LABEL_69;
    case 0x38:
      v11 = @"ROUNDABOUT_EXIT_16";
      goto LABEL_69;
    case 0x39:
      v11 = @"ROUNDABOUT_EXIT_17";
      goto LABEL_69;
    case 0x3A:
      v11 = @"ROUNDABOUT_EXIT_18";
      goto LABEL_69;
    case 0x3B:
      v11 = @"ROUNDABOUT_EXIT_19";
      goto LABEL_69;
    case 0x3C:
      v11 = @"SHARP_LEFT_TURN";
      goto LABEL_69;
    case 0x3D:
      v11 = @"SHARP_RIGHT_TURN";
      goto LABEL_69;
    case 0x3E:
      v11 = @"SLIGHT_LEFT_TURN";
      goto LABEL_69;
    case 0x3F:
      v11 = @"SLIGHT_RIGHT_TURN";
      goto LABEL_69;
    case 0x40:
      v11 = @"CHANGE_HIGHWAY";
      goto LABEL_69;
    case 0x41:
      v11 = @"CHANGE_HIGHWAY_LEFT";
      goto LABEL_69;
    case 0x42:
      v11 = @"CHANGE_HIGHWAY_RIGHT";
      goto LABEL_69;
    case 0x50:
      v11 = @"TOLL_STATION";
      goto LABEL_69;
    case 0x51:
      v11 = @"ENTER_TUNNEL";
      goto LABEL_69;
    case 0x52:
      v11 = @"WAYPOINT_STOP";
      goto LABEL_69;
    case 0x53:
      v11 = @"WAYPOINT_STOP_LEFT";
      goto LABEL_69;
    case 0x54:
      v11 = @"WAYPOINT_STOP_RIGHT";
      goto LABEL_69;
    case 0x55:
      v11 = @"RESUME_ROUTE";
      goto LABEL_69;
    case 0x56:
      v11 = @"RESUME_ROUTE_WITH_U_TURN";
      goto LABEL_69;
    case 0x57:
      v11 = @"CUSTOM";
      goto LABEL_69;
    case 0x58:
      v11 = @"TURN_AROUND";
      goto LABEL_69;
    default:
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_maneuverType];
LABEL_69:
      [v10 appendFormat:@" | %@", v11];

LABEL_70:
      if (fabs(self->_locationCoordinate.longitude) <= 180.0)
      {
        latitude = self->_locationCoordinate.latitude;
        if (latitude >= -90.0 && latitude <= 90.0)
        {
          [v10 appendFormat:@" | %f, %f, %f", *&latitude, *&self->_locationCoordinate.longitude, *&self->_locationCoordinate.altitude];
        }
      }

      if (self->_heading != -1.0)
      {
        [v10 appendFormat:@" | %.2lf", *&self->_heading];
      }

      start = self->_locationCoordinateRange.start;
      end = self->_locationCoordinateRange.end;
      if (GEOPolylineCoordinateRangeIsValid())
      {
        v15 = self->_locationCoordinateRange.start;
        v16 = self->_locationCoordinateRange.end;
        v17 = GEOPolylineCoordinateRangeAsString();
        [v10 appendFormat:@" | %@", v17];
      }

      [v10 appendFormat:@" | %@", self->_guidanceEventID];

      return v10;
  }
}

void __31__MNGuidanceARInfo_description__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 maneuverFormat];

  if (v2)
  {
    v3 = [v4 maneuverFormat];
    [v3 setAttributedStringHandler:&__block_literal_global_13];
  }
}

id __31__MNGuidanceARInfo_description__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = @"NO_TURN";
  switch(a2)
  {
    case 0:
      break;
    case 1:
      v5 = @"LEFT_TURN";
      break;
    case 2:
      v5 = @"RIGHT_TURN";
      break;
    case 3:
      v5 = @"STRAIGHT_AHEAD";
      break;
    case 4:
      v5 = @"U_TURN";
      break;
    case 5:
      v5 = @"FOLLOW_ROAD";
      break;
    case 6:
      v5 = @"ENTER_ROUNDABOUT";
      break;
    case 7:
      v5 = @"EXIT_ROUNDABOUT";
      break;
    case 11:
      v5 = @"OFF_RAMP";
      break;
    case 12:
      v5 = @"ON_RAMP";
      break;
    case 16:
      v5 = @"ARRIVE_END_OF_NAVIGATION";
      break;
    case 17:
      v5 = @"START_ROUTE";
      break;
    case 18:
      v5 = @"ARRIVE_AT_DESTINATION";
      break;
    case 20:
      v5 = @"KEEP_LEFT";
      break;
    case 21:
      v5 = @"KEEP_RIGHT";
      break;
    case 22:
      v5 = @"ENTER_FERRY";
      break;
    case 23:
      v5 = @"EXIT_FERRY";
      break;
    case 24:
      v5 = @"CHANGE_FERRY";
      break;
    case 25:
      v5 = @"START_ROUTE_WITH_U_TURN";
      break;
    case 26:
      v5 = @"U_TURN_AT_ROUNDABOUT";
      break;
    case 27:
      v5 = @"LEFT_TURN_AT_END";
      break;
    case 28:
      v5 = @"RIGHT_TURN_AT_END";
      break;
    case 29:
      v5 = @"HIGHWAY_OFF_RAMP_LEFT";
      break;
    case 30:
      v5 = @"HIGHWAY_OFF_RAMP_RIGHT";
      break;
    case 33:
      v5 = @"ARRIVE_AT_DESTINATION_LEFT";
      break;
    case 34:
      v5 = @"ARRIVE_AT_DESTINATION_RIGHT";
      break;
    case 35:
      v5 = @"U_TURN_WHEN_POSSIBLE";
      break;
    case 39:
      v5 = @"ARRIVE_END_OF_DIRECTIONS";
      break;
    case 41:
      v5 = @"ROUNDABOUT_EXIT_1";
      break;
    case 42:
      v5 = @"ROUNDABOUT_EXIT_2";
      break;
    case 43:
      v5 = @"ROUNDABOUT_EXIT_3";
      break;
    case 44:
      v5 = @"ROUNDABOUT_EXIT_4";
      break;
    case 45:
      v5 = @"ROUNDABOUT_EXIT_5";
      break;
    case 46:
      v5 = @"ROUNDABOUT_EXIT_6";
      break;
    case 47:
      v5 = @"ROUNDABOUT_EXIT_7";
      break;
    case 48:
      v5 = @"ROUNDABOUT_EXIT_8";
      break;
    case 49:
      v5 = @"ROUNDABOUT_EXIT_9";
      break;
    case 50:
      v5 = @"ROUNDABOUT_EXIT_10";
      break;
    case 51:
      v5 = @"ROUNDABOUT_EXIT_11";
      break;
    case 52:
      v5 = @"ROUNDABOUT_EXIT_12";
      break;
    case 53:
      v5 = @"ROUNDABOUT_EXIT_13";
      break;
    case 54:
      v5 = @"ROUNDABOUT_EXIT_14";
      break;
    case 55:
      v5 = @"ROUNDABOUT_EXIT_15";
      break;
    case 56:
      v5 = @"ROUNDABOUT_EXIT_16";
      break;
    case 57:
      v5 = @"ROUNDABOUT_EXIT_17";
      break;
    case 58:
      v5 = @"ROUNDABOUT_EXIT_18";
      break;
    case 59:
      v5 = @"ROUNDABOUT_EXIT_19";
      break;
    case 60:
      v5 = @"SHARP_LEFT_TURN";
      break;
    case 61:
      v5 = @"SHARP_RIGHT_TURN";
      break;
    case 62:
      v5 = @"SLIGHT_LEFT_TURN";
      break;
    case 63:
      v5 = @"SLIGHT_RIGHT_TURN";
      break;
    case 64:
      v5 = @"CHANGE_HIGHWAY";
      break;
    case 65:
      v5 = @"CHANGE_HIGHWAY_LEFT";
      break;
    case 66:
      v5 = @"CHANGE_HIGHWAY_RIGHT";
      break;
    case 80:
      v5 = @"TOLL_STATION";
      break;
    case 81:
      v5 = @"ENTER_TUNNEL";
      break;
    case 82:
      v5 = @"WAYPOINT_STOP";
      break;
    case 83:
      v5 = @"WAYPOINT_STOP_LEFT";
      break;
    case 84:
      v5 = @"WAYPOINT_STOP_RIGHT";
      break;
    case 85:
      v5 = @"RESUME_ROUTE";
      break;
    case 86:
      v5 = @"RESUME_ROUTE_WITH_U_TURN";
      break;
    case 87:
      v5 = @"CUSTOM";
      break;
    case 88:
      v5 = @"TURN_AROUND";
      break;
    default:
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];
      break;
  }

  v6 = [(__CFString *)v5 capitalizedString];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"_" withString:&stru_1F4EB6B70];

  v8 = objc_alloc(MEMORY[0x1E696AAB0]);
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v7];
  v10 = [v8 initWithString:v9];

  return v10;
}

- (MNGuidanceARInfo)initWithEventID:(id)d type:(int)type maneuverType:(int)maneuverType instruction:(id)instruction variableOverrides:(id)overrides arrowLabel:(id)label locationCoordinateRange:(GEOPolylineCoordinateRange)range maneuverRoadName:(id)self0 stepIndex:(unint64_t)self1
{
  dCopy = d;
  instructionCopy = instruction;
  overridesCopy = overrides;
  labelCopy = label;
  nameCopy = name;
  v20 = [(MNGuidanceARInfo *)self init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_guidanceEventID, d);
    v21->_eventType = type;
    v21->_maneuverType = maneuverType;
    objc_storeStrong(&v21->_instruction, instruction);
    objc_storeStrong(&v21->_variableOverrides, overrides);
    objc_storeStrong(&v21->_arrowLabel, label);
    v21->_locationCoordinateRange = range;
    objc_storeStrong(&v21->_maneuverRoadName, name);
    v21->_stepIndex = index;
  }

  return v21;
}

- (MNGuidanceARInfo)initWithEventID:(id)d type:(int)type maneuverType:(int)maneuverType instruction:(id)instruction variableOverrides:(id)overrides arrowLabel:(id)label locationCoordinate:(id)coordinate maneuverRoadName:(id)self0 heading:(double)self1 stepIndex:(unint64_t)self2
{
  var2 = coordinate.var2;
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  dCopy = d;
  instructionCopy = instruction;
  overridesCopy = overrides;
  labelCopy = label;
  nameCopy = name;
  v26 = [(MNGuidanceARInfo *)self init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_guidanceEventID, d);
    v27->_eventType = type;
    v27->_maneuverType = maneuverType;
    objc_storeStrong(&v27->_instruction, instruction);
    v28 = [overridesCopy objectForKeyedSubscript:@"{Destination}"];
    variableOverrides = v27->_variableOverrides;
    v27->_variableOverrides = v28;

    objc_storeStrong(&v27->_arrowLabel, label);
    v27->_locationCoordinate.latitude = var0;
    v27->_locationCoordinate.longitude = var1;
    v27->_locationCoordinate.altitude = var2;
    objc_storeStrong(&v27->_maneuverRoadName, name);
    v27->_heading = heading;
    v27->_stepIndex = index;
  }

  return v27;
}

- (MNGuidanceARInfo)init
{
  v3.receiver = self;
  v3.super_class = MNGuidanceARInfo;
  result = [(MNGuidanceARInfo *)&v3 init];
  if (result)
  {
    *&result->_locationCoordinate.latitude = kGEOLocationCoordinate3DInvalid_12499;
    result->_locationCoordinate.altitude = 1.79769313e308;
    result->_locationCoordinateRange = *MEMORY[0x1E69A1920];
    result->_heading = -1.0;
  }

  return result;
}

@end