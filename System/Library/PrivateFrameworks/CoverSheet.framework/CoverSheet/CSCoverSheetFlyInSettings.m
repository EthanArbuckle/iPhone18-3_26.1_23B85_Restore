@interface CSCoverSheetFlyInSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSCoverSheetFlyInSettings

- (void)setDefaultValues
{
  [(CSCoverSheetFlyInSettings *)self setCenterFollowsFinger:0];
  [(CSCoverSheetFlyInSettings *)self setAnimateIconsOnPresentationToo:CSFeatureEnabled(12)];
  [(CSCoverSheetFlyInSettings *)self setIconsFlyInInteractiveResponseMin:0.5];
  [(CSCoverSheetFlyInSettings *)self setIconsFlyInInteractiveResponseMax:0.86];
  [(CSCoverSheetFlyInSettings *)self setIconsFlyInInteractiveDampingRatioMin:0.7];
  [(CSCoverSheetFlyInSettings *)self setIconsFlyInInteractiveDampingRatioMax:0.9];
  v3 = SBFEffectiveHomeButtonType();
  v4 = 130.0;
  if (v3 == 2)
  {
    v4 = 72.0;
    v5 = 14.4;
  }

  else
  {
    v5 = 22.0;
  }

  [(CSCoverSheetFlyInSettings *)self setIconsFlyInTension:v4];
  [(CSCoverSheetFlyInSettings *)self setIconsFlyInFriction:v5];
  [(CSCoverSheetFlyInSettings *)self setSlomoRate:2000.0];
  [(CSCoverSheetFlyInSettings *)self setBaselineDistance:0.5];
  [(CSCoverSheetFlyInSettings *)self setEffectMultiplier:7.7];
  [(CSCoverSheetFlyInSettings *)self setDistanceExponent:1.0];
  [(CSCoverSheetFlyInSettings *)self setAnimatesFlyOut:1];
  [(CSCoverSheetFlyInSettings *)self setAnimatesFlyOutToAOD:0];
  [(CSCoverSheetFlyInSettings *)self setAnimatesFlyOutToAODFromIdleDim:0];
  [(CSCoverSheetFlyInSettings *)self _setFlyInResponseMultiplier:1.0];
  [(CSCoverSheetFlyInSettings *)self _setFlyOutResponseMultiplier:1.0];
  [(CSCoverSheetFlyInSettings *)self _setFlyZResponseMultiplier:1.0];
  [(CSCoverSheetFlyInSettings *)self _setFlyZCurveFactorMultiplier:1.0];

  [(CSCoverSheetFlyInSettings *)self _setFlyAlphaResponseMultiplier:1.0];
}

+ (id)settingsControllerModule
{
  v125[2] = *MEMORY[0x277D85DE8];
  v112 = [MEMORY[0x277D432A0] rowWithTitle:@"Center Follows Finger" valueKeyPath:@"centerFollowsFinger"];
  v111 = [MEMORY[0x277D432A0] rowWithTitle:@"Animate On Presentation Too" valueKeyPath:@"animateIconsOnPresentationToo"];
  v2 = MEMORY[0x277D43218];
  v125[0] = v112;
  v125[1] = v111;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:2];
  v114 = [v2 sectionWithRows:v3 title:@"Icons FlyIn"];

  v110 = [MEMORY[0x277D431F0] rowWithTitle:@"Tension" valueKeyPath:@"iconsFlyInTension"];
  v109 = [MEMORY[0x277D431F0] rowWithTitle:@"Friction" valueKeyPath:@"iconsFlyInFriction"];
  v4 = MEMORY[0x277D43218];
  v124[0] = v110;
  v124[1] = v109;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:2];
  v113 = [v4 sectionWithRows:v5 title:@"Animated"];

  v108 = [MEMORY[0x277D431F0] rowWithTitle:@"Interactive Response Min" valueKeyPath:@"iconsFlyInInteractiveResponseMin"];
  v107 = [MEMORY[0x277D431F0] rowWithTitle:@"Interactive Response Max" valueKeyPath:@"iconsFlyInInteractiveResponseMax"];
  v106 = [MEMORY[0x277D431F0] rowWithTitle:@"Interactive Damping Ratio Min" valueKeyPath:@"iconsFlyInInteractiveDampingRatioMin"];
  v105 = [MEMORY[0x277D431F0] rowWithTitle:@"Interactive Damping Ratio Max" valueKeyPath:@"iconsFlyInInteractiveDampingRatioMax"];
  v6 = MEMORY[0x277D43218];
  v123[0] = v108;
  v123[1] = v107;
  v123[2] = v106;
  v123[3] = v105;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:4];
  v101 = [v6 sectionWithRows:v7 title:@"Interactive"];

  v104 = [MEMORY[0x277D431F0] rowWithTitle:@"Baseline Distance" valueKeyPath:@"baselineDistance"];
  v103 = [MEMORY[0x277D431F0] rowWithTitle:@"Effect Multiplier" valueKeyPath:@"effectMultiplier"];
  v102 = [MEMORY[0x277D431F0] rowWithTitle:@"Distance Exponent" valueKeyPath:@"distanceExponent"];
  v8 = MEMORY[0x277D43218];
  v122[0] = v104;
  v122[1] = v103;
  v122[2] = v102;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:3];
  v100 = [v8 sectionWithRows:v9 title:@"Animation / Curve"];

  v99 = [MEMORY[0x277D432A0] rowWithTitle:@"Animates Fly Out" valueKeyPath:@"animatesFlyOut"];
  v98 = [MEMORY[0x277D432A0] rowWithTitle:@"Animates Fly Out To AOD" valueKeyPath:@"animatesFlyOutToAOD"];
  v97 = [MEMORY[0x277D432A0] rowWithTitle:@"Animates Fly Out To AOD From Idle Dim" valueKeyPath:@"animatesFlyOutToAODFromIdleDim"];
  v96 = [MEMORY[0x277D431F0] rowWithTitle:@"Fly In Response" valueKeyPath:@"iconsFlyInResponse"];
  v95 = [MEMORY[0x277D431F0] rowWithTitle:@"Fly Out Response" valueKeyPath:@"iconsFlyOutResponse"];
  v94 = [MEMORY[0x277D431F0] rowWithTitle:@"Fly Z Response" valueKeyPath:@"iconFlyZResponse"];
  v93 = [MEMORY[0x277D431F0] rowWithTitle:@"Fly Z CurveFactor" valueKeyPath:@"iconFlyZCurveFactor"];
  v92 = [MEMORY[0x277D431F0] rowWithTitle:@"Alpha Response" valueKeyPath:@"iconFlyAlphaResponse"];
  v10 = MEMORY[0x277D43218];
  v121[0] = v99;
  v121[1] = v98;
  v121[2] = v97;
  v121[3] = v96;
  v121[4] = v95;
  v121[5] = v94;
  v121[6] = v93;
  v121[7] = v92;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:8];
  v91 = [v10 sectionWithRows:v11 title:@"(SUTU) Fly Out Customization"];

  v12 = MEMORY[0x277D431A8];
  v13 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1161];
  v14 = [v12 rowWithTitle:@"Shipping" action:v13];

  v15 = MEMORY[0x277D431A8];
  v16 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1163];
  v17 = [v15 rowWithTitle:@"90% Duration" action:v16];

  v18 = MEMORY[0x277D431A8];
  v19 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1165];
  v20 = [v18 rowWithTitle:@"80% Duration" action:v19];

  v21 = MEMORY[0x277D431A8];
  v22 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1167];
  v23 = [v21 rowWithTitle:@"70% Duration" action:v22];

  v24 = MEMORY[0x277D43218];
  v120[0] = v14;
  v120[1] = v17;
  v120[2] = v20;
  v120[3] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:4];
  v90 = [v24 sectionWithRows:v25 title:@"Fly In Presets"];

  v26 = MEMORY[0x277D431A8];
  v27 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1172];
  v28 = [v26 rowWithTitle:@"Shipping" action:v27];

  v29 = MEMORY[0x277D431A8];
  v30 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1174];
  v31 = [v29 rowWithTitle:@"90% Duration" action:v30];

  v32 = MEMORY[0x277D431A8];
  v33 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1176];
  v34 = [v32 rowWithTitle:@"80% Duration" action:v33];

  v35 = MEMORY[0x277D431A8];
  v36 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1178];
  v37 = [v35 rowWithTitle:@"70% Duration" action:v36];

  v38 = MEMORY[0x277D43218];
  v119[0] = v28;
  v119[1] = v31;
  v119[2] = v34;
  v119[3] = v37;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:4];
  v89 = [v38 sectionWithRows:v39 title:@"Fly Out Presets"];

  v40 = MEMORY[0x277D431A8];
  v41 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1183];
  v42 = [v40 rowWithTitle:@"Shipping" action:v41];

  v43 = MEMORY[0x277D431A8];
  v44 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1185];
  v45 = [v43 rowWithTitle:@"90% Duration" action:v44];

  v46 = MEMORY[0x277D431A8];
  v47 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1187];
  v48 = [v46 rowWithTitle:@"80% Duration" action:v47];

  v49 = MEMORY[0x277D431A8];
  v50 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1189];
  v51 = [v49 rowWithTitle:@"70% Duration" action:v50];

  v52 = MEMORY[0x277D43218];
  v118[0] = v42;
  v118[1] = v45;
  v118[2] = v48;
  v118[3] = v51;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:4];
  v88 = [v52 sectionWithRows:v53 title:@"Fly* Z Response"];

  v54 = MEMORY[0x277D431A8];
  v55 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1194];
  v56 = [v54 rowWithTitle:@"Shipping" action:v55];

  v57 = MEMORY[0x277D431A8];
  v58 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1196];
  v59 = [v57 rowWithTitle:@"90% Duration" action:v58];

  v60 = MEMORY[0x277D431A8];
  v61 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1198];
  v62 = [v60 rowWithTitle:@"80% Duration" action:v61];

  v63 = MEMORY[0x277D431A8];
  v64 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1200];
  v65 = [v63 rowWithTitle:@"70% Duration" action:v64];

  v66 = MEMORY[0x277D43218];
  v117[0] = v56;
  v117[1] = v59;
  v117[2] = v62;
  v117[3] = v65;
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:4];
  v87 = [v66 sectionWithRows:v67 title:@"Fly* Z Curve Factor"];

  v68 = MEMORY[0x277D431A8];
  v69 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1205];
  v70 = [v68 rowWithTitle:@"Shipping" action:v69];

  v71 = MEMORY[0x277D431A8];
  v72 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1207];
  v73 = [v71 rowWithTitle:@"90% Duration" action:v72];

  v74 = MEMORY[0x277D431A8];
  v75 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1209];
  v76 = [v74 rowWithTitle:@"80% Duration" action:v75];

  v77 = MEMORY[0x277D431A8];
  v78 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1211];
  v79 = [v77 rowWithTitle:@"70% Duration" action:v78];

  v80 = MEMORY[0x277D43218];
  v116[0] = v70;
  v116[1] = v73;
  v116[2] = v76;
  v116[3] = v79;
  v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:4];
  v82 = [v80 sectionWithRows:v81 title:@"Fly* Icon Alpha Response"];

  v83 = MEMORY[0x277D43218];
  v115[0] = v114;
  v115[1] = v113;
  v115[2] = v101;
  v115[3] = v100;
  v115[4] = v91;
  v115[5] = v90;
  v115[6] = v89;
  v115[7] = v88;
  v115[8] = v87;
  v115[9] = v82;
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:10];
  v85 = [v83 moduleWithTitle:@"Transitions Settings" contents:v84];

  return v85;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyInResponseMultiplier:1.0];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyInResponseMultiplier:0.9];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyInResponseMultiplier:0.8];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyInResponseMultiplier:0.7];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyOutResponseMultiplier:1.0];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyOutResponseMultiplier:0.9];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyOutResponseMultiplier:0.8];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyOutResponseMultiplier:0.7];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyOutResponseMultiplier:1.0];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_10(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyOutResponseMultiplier:0.9];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyOutResponseMultiplier:0.8];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyOutResponseMultiplier:0.7];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_13(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyOutResponseMultiplier:1.0];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_14(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyOutResponseMultiplier:0.9];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_15(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyOutResponseMultiplier:0.8];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_16(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyOutResponseMultiplier:0.7];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_17(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyAlphaResponseMultiplier:1.0];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_18(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyAlphaResponseMultiplier:0.9];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_19(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyAlphaResponseMultiplier:0.8];

  return 1;
}

uint64_t __53__CSCoverSheetFlyInSettings_settingsControllerModule__block_invoke_20(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setFlyAlphaResponseMultiplier:0.7];

  return 1;
}

@end