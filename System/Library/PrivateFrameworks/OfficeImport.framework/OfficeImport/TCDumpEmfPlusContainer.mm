@interface TCDumpEmfPlusContainer
- (void)fromBinary:(__sFILE *)binary toXml:(_xmlNode *)xml state:(id)state;
@end

@implementation TCDumpEmfPlusContainer

- (void)fromBinary:(__sFILE *)binary toXml:(_xmlNode *)xml state:(id)state
{
  v145 = *MEMORY[0x277D85DE8];
  v6 = [[TCDumpNumeric alloc] initWithType:5];
  v26 = [[TCDumpNumeric alloc] initWithType:3];
  v27[0] = 16385;
  v28 = @"Header";
  v29 = 16386;
  v30 = @"EndOfFile";
  v31 = 16387;
  v32 = @"Comment";
  v33 = 16388;
  v34 = @"GetDC";
  v35 = 16389;
  v36 = @"MultiFormatStart";
  v37 = 16390;
  v38 = @"MultiFormatSection";
  v39 = 16391;
  v40 = @"MultiFormatEnd";
  v41 = 16392;
  v42 = @"Object";
  v43 = 16393;
  v44 = @"Clear";
  v45 = 16394;
  v46 = @"FillRects";
  v47 = 16395;
  v48 = @"DrawRects";
  v49 = 16396;
  v50 = @"FillPolygon";
  v51 = 16397;
  v52 = @"DrawLines";
  v53 = 16398;
  v54 = @"FillEllipse";
  v55 = 16399;
  v56 = @"DrawEllipse";
  v57 = 16400;
  v58 = @"FillPie";
  v59 = 16401;
  v60 = @"DrawPie";
  v61 = 16402;
  v62 = @"DrawArc";
  v63 = 16403;
  v64 = @"FillRegion";
  v65 = 16404;
  v66 = @"FillPath";
  v67 = 16405;
  v68 = @"DrawPath";
  v69 = 16406;
  v70 = @"FillClosedCurve";
  v71 = 16407;
  v72 = @"DrawClosedCurve";
  v73 = 16408;
  v74 = @"DrawCurve";
  v75 = 16409;
  v76 = @"DrawBeziers";
  v77 = 16410;
  v78 = @"DrawImage";
  v79 = 16411;
  v80 = @"DrawImagePoints";
  v81 = 16412;
  v82 = @"DrawString";
  v83 = 16413;
  v84 = @"SetRenderingOrigin";
  v85 = 16414;
  v86 = @"SetAntiAliasMode";
  v87 = 16415;
  v88 = @"SetTextRenderingHint";
  v89 = 16416;
  v90 = @"SetTextContrast";
  v91 = 16417;
  v92 = @"SetInterpolationMode";
  v93 = 16418;
  v94 = @"SetPixelOffsetMode";
  v95 = 16419;
  v96 = @"SetCompositingMode";
  v97 = 16420;
  v98 = @"SetCompositingQuality";
  v99 = 16421;
  v100 = @"Save";
  v101 = 16422;
  v102 = @"Restore";
  v103 = 16423;
  v104 = @"BeginContainer";
  v105 = 16424;
  v106 = @"BeginContainerNoParams";
  v107 = 16425;
  v108 = @"EndContainer";
  v109 = 16426;
  v110 = @"SetWorldTransform";
  v111 = 16427;
  v112 = @"ResetWorldTransform";
  v113 = 16428;
  v114 = @"MultiplyWorldTransform";
  v115 = 16429;
  v116 = @"TranslateWorldTransform";
  v117 = 16430;
  v118 = @"ScaleWorldTransform";
  v119 = 16431;
  v120 = @"RotateWorldTransform";
  v121 = 16432;
  v122 = @"SetPageTransform";
  v123 = 16433;
  v124 = @"ResetClip";
  v125 = 16434;
  v126 = @"SetClipRect";
  v127 = 16435;
  v128 = @"SetClipPath";
  v129 = 16436;
  v130 = @"SetClipRegion";
  v131 = 16437;
  v132 = @"OffsetClip";
  v133 = 16438;
  v134 = @"DrawDriverString";
  v135 = 16439;
  v136 = @"StrokeFillPath";
  v137 = 16440;
  v138 = @"SerializableObject";
  v139 = 16441;
  v140 = @"SetTSGraphics";
  v141 = 16442;
  v142 = @"SetTSClip";
  v143 = 0;
  v144 = 0;
  v24 = [[TCDumpEnum alloc] initWithTypeName:@"EmfPlusRecordType" pairs:v27];
  v7 = [[TCDumpNumeric alloc] initWithType:3 enumType:v24];
  fseek(binary, -8, 1);
  LEUI32 = TCDumpReadLEUI32(binary);
  fseek(binary, 4, 1);
  v9 = LEUI32 + ftello(binary) - 4;
  v10 = ftello(binary);
  if (v9 > v10)
  {
    v11 = v10;
    v12 = 0;
    do
    {
      v13 = xmlNewNode(0, "EmfPlusRecord");
      xmlAddChild(xml, v13);
      sfaxmlSetLongNoNsProp(v13, "index", v12);
      v14 = xmlNewNode(0, "type");
      xmlAddChild(v13, v14);
      [(TCDumpNumeric *)v7 fromBinary:binary toXml:v14 state:0];
      v15 = xmlNewNode(0, "flags");
      xmlAddChild(v13, v15);
      [(TCDumpNumeric *)v26 fromBinary:binary toXml:v15 state:0];
      v16 = xmlNewNode(0, "record-size");
      xmlAddChild(v13, v16);
      [(TCDumpNumeric *)v6 fromBinary:binary toXml:v16 state:0];
      fseek(binary, -4, 1);
      if (TCDumpReadLEUI32(binary) != 8)
      {
        v17 = xmlNewNode(0, "data-size");
        xmlAddChild(v13, v17);
        [(TCDumpNumeric *)v6 fromBinary:binary toXml:v17 state:0];
        fseek(binary, -4, 1);
        v18 = TCDumpReadLEUI32(binary);
        v19 = v11 + 12;
        if (v18 + v11 + 12 > v9)
        {
          v20 = xmlNewNode(0, "actual-data-size");
          xmlAddChild(v13, v20);
          v18 = v9 - v19;
          writeIntToXml(v20, v9 - v19, 4, 0, 0, 0);
        }

        if (v18)
        {
          v21 = xmlNewNode(0, "data");
          xmlAddChild(v13, v21);
          v22 = [[TCDumpBlob alloc] initWithSize_:v18];
          [(TCDumpBlob *)v22 fromBinary:binary toXml:v21 state:0];
        }
      }

      ++v12;
      v11 = ftello(binary);
    }

    while (v9 > v11);
  }

  for (i = 234; i != -2; i -= 4)
  {
  }
}

@end