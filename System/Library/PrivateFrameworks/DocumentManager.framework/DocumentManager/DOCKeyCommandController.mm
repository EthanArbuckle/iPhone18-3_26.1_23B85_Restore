@interface DOCKeyCommandController
+ (id)cancellingKeyCommandsWithAction:(SEL)action;
+ (id)dismissingKeyCommandsWithAction:(SEL)action;
- (id)_commandWithTitle:(id)title discoverabilityTitle:(id)discoverabilityTitle image:(id)image action:(SEL)action alternates:(id)alternates;
- (id)_keyCommandWithTitle:(id)title discoverabilityTitle:(id)discoverabilityTitle image:(id)image action:(SEL)action input:(id)input modifierFlags:(int64_t)flags attributes:(unint64_t)attributes alternates:(id)self0;
- (id)_keyCommandsInMenu:(id)menu;
- (id)_menuDefinition;
- (id)_menuOrder;
- (id)_menuTitleForCustomMenuWithIdentifier:(id)identifier;
- (id)_unwantedMenuIdentifiers;
- (id)allKeyCommands;
- (id)allKeyCommandsWithAction:(SEL)action attributes:(unint64_t)attributes;
- (void)buildWithBuilder:(id)builder;
@end

@implementation DOCKeyCommandController

+ (id)cancellingKeyCommandsWithAction:(SEL)action
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCBA0];
  v5 = *MEMORY[0x1E69DDEA0];
  v15 = @"com.apple.DocumentManager.keyCommands.cancel";
  v16 = &unk_1F5F533F0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v7 = [v4 commandWithTitle:&stru_1F5F4AEF8 image:0 action:action input:v5 modifierFlags:0 propertyList:v6];
  v17[0] = v7;
  v8 = MEMORY[0x1E69DCBA0];
  v13 = @"com.apple.DocumentManager.keyCommands.cancel";
  v14 = &unk_1F5F53408;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v10 = [v8 commandWithTitle:&stru_1F5F4AEF8 image:0 action:action input:@"." modifierFlags:0x100000 propertyList:v9];
  v17[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

  return v11;
}

+ (id)dismissingKeyCommandsWithAction:(SEL)action
{
  v22[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCBA0];
  v5 = *MEMORY[0x1E69DDEA0];
  v20 = @"com.apple.DocumentManager.keyCommands.dismiss";
  v21 = &unk_1F5F533F0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v7 = [v4 commandWithTitle:&stru_1F5F4AEF8 image:0 action:action input:v5 modifierFlags:0 propertyList:v6];
  v22[0] = v7;
  v8 = MEMORY[0x1E69DCBA0];
  v18 = @"com.apple.DocumentManager.keyCommands.dismiss";
  v19 = &unk_1F5F53408;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v10 = [v8 commandWithTitle:&stru_1F5F4AEF8 image:0 action:action input:@"." modifierFlags:0x100000 propertyList:v9];
  v22[1] = v10;
  v11 = MEMORY[0x1E69DCBA0];
  v16 = @"com.apple.DocumentManager.keyCommands.dismiss";
  v17 = &unk_1F5F53420;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v13 = [v11 commandWithTitle:&stru_1F5F4AEF8 image:0 action:action input:@"w" modifierFlags:0x100000 propertyList:v12];
  v22[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];

  return v14;
}

- (id)_keyCommandWithTitle:(id)title discoverabilityTitle:(id)discoverabilityTitle image:(id)image action:(SEL)action input:(id)input modifierFlags:(int64_t)flags attributes:(unint64_t)attributes alternates:(id)self0
{
  v15 = MEMORY[0x1E69DCBA0];
  v16 = MEMORY[0x1E695E0F8] & ((attributes << 61) >> 63);
  if (alternates)
  {
    alternatesCopy = alternates;
  }

  else
  {
    alternatesCopy = MEMORY[0x1E695E0F0];
  }

  discoverabilityTitleCopy = discoverabilityTitle;
  v19 = [v15 commandWithTitle:title image:image action:action input:input modifierFlags:flags propertyList:v16 alternates:alternatesCopy];
  [v19 setDiscoverabilityTitle:discoverabilityTitleCopy];

  [v19 setAttributes:attributes];

  return v19;
}

- (id)_commandWithTitle:(id)title discoverabilityTitle:(id)discoverabilityTitle image:(id)image action:(SEL)action alternates:(id)alternates
{
  v10 = MEMORY[0x1E69DC8B0];
  if (alternates)
  {
    alternatesCopy = alternates;
  }

  else
  {
    alternatesCopy = MEMORY[0x1E695E0F0];
  }

  discoverabilityTitleCopy = discoverabilityTitle;
  v13 = [v10 commandWithTitle:title image:image action:action propertyList:MEMORY[0x1E695E0F8] alternates:alternatesCopy];
  [v13 setDiscoverabilityTitle:discoverabilityTitleCopy];

  return v13;
}

- (id)_menuDefinition
{
  v563[1] = *MEMORY[0x1E69E9840];
  v531 = _DocumentManagerBundle();
  v3 = [v531 localizedStringForKey:@"Delete All Recently Deleted…" value:@"Delete All Recently Deleted…" table:@"Localizable"];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  v5 = *MEMORY[0x1E69DDE88];
  v6 = MEMORY[0x1E69DC8B8];
  v7 = _DocumentManagerBundle();
  v8 = [v7 localizedStringForKey:@"Delete All Recently Deleted" value:@"Delete All Recently Deleted" table:@"Localizable"];
  v9 = [v6 alternateWithTitle:v8 action:sel_performEmptyTrashNow_ modifierFlags:1703936];
  v563[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v563 count:1];
  selfCopy = self;
  v11 = [(DOCKeyCommandController *)self _keyCommandWithTitle:v3 discoverabilityTitle:0 image:v4 action:sel_performEmptyTrash_ input:v5 modifierFlags:1179648 attributes:2 alternates:v10];

  v12 = MEMORY[0x1E69DCC60];
  v499 = v11;
  v562 = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v562 count:1];
  v532 = [v12 menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:v13];

  array = [MEMORY[0x1E695DF70] array];
  if (DOCDebugMenuEnabled())
  {
    v15 = [MEMORY[0x1E69DCBA0] commandWithTitle:&stru_1F5F4AEF8 image:0 action:sel_performShowDebugMenu_ input:@"\\"" modifierFlags:0x100000 propertyList:MEMORY[0x1E695E0F8]];
    [v15 setDiscoverabilityTitle:&stru_1F5F4AEF8];
    [v15 setAttributes:4];
    [array addObject:v15];
  }

  v16 = MEMORY[0x1E69DCBA0];
  v17 = _DocumentManagerBundle();
  v18 = [v17 localizedStringForKey:@"Create Document" value:@"Create Document" table:@"Localizable"];
  v19 = [v16 commandWithTitle:v18 image:0 action:sel_performCreateDocumentOrOpenNewWindow_ input:@"n" modifierFlags:0x100000 propertyList:0];

  v20 = _DocumentManagerBundle();
  v21 = [v20 localizedStringForKey:@"Create Document" value:@"Create Document" table:@"Localizable"];
  [v19 setDiscoverabilityTitle:v21];

  v497 = v19;
  [array addObject:v19];
  v22 = MEMORY[0x1E69DCBA0];
  v23 = _DocumentManagerBundle();
  v24 = [v23 localizedStringForKey:@"New Folder" value:@"New Folder" table:@"Localizable"];
  v25 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"folder.badge.plus"];
  v26 = [v22 commandWithTitle:v24 image:v25 action:sel_performCreateFolder_ input:@"n" modifierFlags:1179648 propertyList:0];

  v27 = _DocumentManagerBundle();
  v28 = [v27 localizedStringForKey:@"New Folder" value:@"New Folder" table:@"Localizable"];
  [v26 setDiscoverabilityTitle:v28];

  v496 = v26;
  [array addObject:v26];
  v29 = MEMORY[0x1E69DCBA0];
  v30 = _DocumentManagerBundle();
  v31 = [v30 localizedStringForKey:@"New Folder with Selection" value:@"New Folder with Selection" table:@"Localizable"];
  v32 = [v29 commandWithTitle:v31 image:0 action:sel_performCreateFolderWithSelection_ input:@"n" modifierFlags:1310720 propertyList:0];

  v33 = _DocumentManagerBundle();
  v34 = [v33 localizedStringForKey:@"New Folder with Selection" value:@"New Folder with Selection" table:@"Localizable"];
  [v32 setDiscoverabilityTitle:v34];

  v495 = v32;
  [array addObject:v32];
  v35 = MEMORY[0x1E69DCBA0];
  v36 = _DocumentManagerBundle();
  v37 = [v36 localizedStringForKey:@"Open" value:@"Open" table:@"Localizable"];
  v38 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.forward.app"];
  v39 = [v35 commandWithTitle:v37 image:v38 action:sel_performOpen_ input:@"o" modifierFlags:0x100000 propertyList:0];

  v40 = _DocumentManagerBundle();
  v41 = [v40 localizedStringForKey:@"Open" value:@"Open" table:@"Localizable"];
  [v39 setDiscoverabilityTitle:v41];

  v494 = v39;
  [array addObject:v39];
  v42 = MEMORY[0x1E69DCBA0];
  v43 = _DocumentManagerBundle();
  v44 = [v43 localizedStringForKey:@"Open" value:@"Open" table:@"Localizable"];
  v45 = MEMORY[0x1E695E0F8];
  v46 = [v42 commandWithTitle:v44 image:0 action:sel_performOpen_ input:*MEMORY[0x1E69DDE90] modifierFlags:0x100000 propertyList:?];

  v47 = _DocumentManagerBundle();
  v48 = [v47 localizedStringForKey:@"Open" value:@"Open" table:@"Localizable"];
  [v46 setDiscoverabilityTitle:v48];

  [v46 setAttributes:4];
  v493 = v46;
  [array addObject:v46];
  v49 = MEMORY[0x1E69DCC60];
  v50 = _DocumentManagerBundle();
  v51 = [v50 localizedStringForKey:@"Open With" value:@"Open With" table:@"Localizable"];
  v52 = [MEMORY[0x1E69DC928] elementUsingFocusWithIdentifier:@"com.apple.DocumentManager.menu.main.file.openwith-deferred" shouldCacheItems:0];
  v561 = v52;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v561 count:1];
  v54 = [v49 menuWithTitle:v51 image:0 identifier:0 options:0 children:v53];

  v492 = v54;
  [array addObject:v54];
  v55 = [MEMORY[0x1E69DCBA0] commandWithTitle:&stru_1F5F4AEF8 image:0 action:sel_performCommandReturnKey_ input:@"\r" modifierFlags:0x100000 propertyList:v45];
  [v55 setDiscoverabilityTitle:&stru_1F5F4AEF8];
  [v55 setAttributes:4];
  [v55 setWantsPriorityOverSystemBehavior:1];
  v491 = v55;
  [array addObject:v55];
  v56 = MEMORY[0x1E69DCBA0];
  v57 = _DocumentManagerBundle();
  v58 = [v57 localizedStringForKey:@"Save" value:@"Save" table:@"Localizable"];
  v59 = [v56 commandWithTitle:v58 image:0 action:sel_performConfirmPickerExportOrDrillIn_ input:@"s" modifierFlags:0x100000 propertyList:v45];

  v60 = _DocumentManagerBundle();
  v61 = [v60 localizedStringForKey:@"Save" value:@"Save" table:@"Localizable"];
  [v59 setDiscoverabilityTitle:v61];

  [v59 setAttributes:4];
  v490 = v59;
  [array addObject:v59];
  v498 = array;
  v530 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:array];
  array2 = [MEMORY[0x1E695DF70] array];
  v63 = MEMORY[0x1E69DCBA0];
  v64 = _DocumentManagerBundle();
  v65 = [v64 localizedStringForKey:@"Get Info" value:@"Get Info" table:@"Localizable"];
  v66 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
  v67 = [v63 commandWithTitle:v65 image:v66 action:sel_performGetInfo_ input:@"i" modifierFlags:0x100000 propertyList:0];

  v68 = _DocumentManagerBundle();
  v69 = [v68 localizedStringForKey:@"Get Info" value:@"Get Info" table:@"Localizable"];
  [v67 setDiscoverabilityTitle:v69];

  v488 = v67;
  [array2 addObject:v67];
  v70 = MEMORY[0x1E69DCBA0];
  v71 = _DocumentManagerBundle();
  v72 = [v71 localizedStringForKey:@"Rename" value:@"Rename" table:@"Localizable"];
  v73 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pencil"];
  v74 = [v70 commandWithTitle:v72 image:v73 action:sel_performRename_ input:@"\r" modifierFlags:0 propertyList:0];

  v75 = _DocumentManagerBundle();
  v76 = [v75 localizedStringForKey:@"Rename" value:@"Rename" table:@"Localizable"];
  [v74 setDiscoverabilityTitle:v76];

  [v74 setWantsPriorityOverSystemBehavior:1];
  v487 = v74;
  [array2 addObject:v74];
  v77 = _DocumentManagerBundle();
  v78 = [v77 localizedStringForKey:@"Compress" value:@"Compress" table:@"Localizable"];
  v79 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"zipper.page"];
  v80 = [(DOCKeyCommandController *)selfCopy _commandWithTitle:v78 discoverabilityTitle:0 image:v79 action:sel_performCompress_ alternates:0];

  v486 = v80;
  [array2 addObject:v80];
  v81 = MEMORY[0x1E69DCBA0];
  v82 = _DocumentManagerBundle();
  v83 = [v82 localizedStringForKey:@"Duplicate" value:@"Duplicate" table:@"Localizable"];
  v84 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.square.on.square"];
  v85 = [v81 commandWithTitle:v83 image:v84 action:sel_performDuplicate_ input:@"d" modifierFlags:0x100000 propertyList:0];

  v86 = _DocumentManagerBundle();
  v87 = [v86 localizedStringForKey:@"Duplicate" value:@"Duplicate" table:@"Localizable"];
  [v85 setDiscoverabilityTitle:v87];

  v485 = v85;
  [array2 addObject:v85];
  v88 = MEMORY[0x1E69DCBA0];
  v89 = _DocumentManagerBundle();
  v90 = [v89 localizedStringForKey:@"Quick Look" value:@"Quick Look" table:@"Localizable"];
  v91 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eye"];
  v92 = [v88 commandWithTitle:v90 image:v91 action:sel_performPreview_ input:@"y" modifierFlags:0x100000 propertyList:0];

  v93 = _DocumentManagerBundle();
  v94 = [v93 localizedStringForKey:@"Quick Look" value:@"Quick Look" table:@"Localizable"];
  [v92 setDiscoverabilityTitle:v94];

  v484 = v92;
  [array2 addObject:v92];
  v95 = MEMORY[0x1E69DCBA0];
  v96 = _DocumentManagerBundle();
  v97 = [v96 localizedStringForKey:@"Quick Look" value:@"Quick Look" table:@"Localizable"];
  v98 = [v95 commandWithTitle:v97 image:0 action:sel_performPreview_ input:@" " modifierFlags:0 propertyList:MEMORY[0x1E695E0F8]];

  v99 = _DocumentManagerBundle();
  v100 = [v99 localizedStringForKey:@"Quick Look" value:@"Quick Look" table:@"Localizable"];
  [v98 setDiscoverabilityTitle:v100];

  [v98 setAttributes:4];
  [v98 setWantsPriorityOverSystemBehavior:1];
  v483 = v98;
  [array2 addObject:v98];
  v489 = array2;
  v529 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:array2];
  v101 = _DocumentManagerBundle();
  v102 = [v101 localizedStringForKey:@"Share…" value:@"Share…" table:@"Localizable"];
  v103 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
  v104 = [(DOCKeyCommandController *)selfCopy _commandWithTitle:v102 discoverabilityTitle:0 image:v103 action:sel_performShare_ alternates:0];

  v105 = MEMORY[0x1E69DCC60];
  v482 = v104;
  v560 = v104;
  v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v560 count:1];
  v528 = [v105 menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:v106];

  v107 = MEMORY[0x1E69DCBA0];
  v108 = _DocumentManagerBundle();
  v109 = [v108 localizedStringForKey:@"Show in Enclosing Folder" value:@"Show in Enclosing Folder" table:@"Localizable"];
  v110 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.folder"];
  v111 = [v107 commandWithTitle:v109 image:v110 action:sel_performRevealItem_ input:@"r" modifierFlags:0x100000 propertyList:0];

  v112 = _DocumentManagerBundle();
  v113 = [v112 localizedStringForKey:@"Show in Enclosing Folder" value:@"Show in Enclosing Folder" table:@"Localizable"];
  [v111 setDiscoverabilityTitle:v113];

  v114 = MEMORY[0x1E69DCBA0];
  v115 = _DocumentManagerBundle();
  v116 = [v115 localizedStringForKey:@"Show in Folder" value:@"Show in Folder" table:@"Localizable"];
  v117 = [v114 commandWithTitle:v116 image:0 action:sel_performRevealItem_ input:@"a" modifierFlags:1835008 propertyList:MEMORY[0x1E695E0F8]];

  v118 = _DocumentManagerBundle();
  v119 = [v118 localizedStringForKey:@"Show in Folder" value:@"Show in Folder" table:@"Localizable"];
  [v117 setDiscoverabilityTitle:v119];

  [v117 setAttributes:4];
  v120 = MEMORY[0x1E69DCBA0];
  v121 = _DocumentManagerBundle();
  v122 = [v121 localizedStringForKey:@"Add to Favorites" value:@"Add to Favorites" table:@"Localizable"];
  v123 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"star"];
  v124 = [v120 commandWithTitle:v122 image:v123 action:sel_performMarkAsFavorite_ input:@"t" modifierFlags:1310720 propertyList:0];

  v125 = _DocumentManagerBundle();
  v126 = [v125 localizedStringForKey:@"Add to Favorites" value:@"Add to Favorites" table:@"Localizable"];
  [v124 setDiscoverabilityTitle:v126];

  v127 = MEMORY[0x1E69DCBA0];
  v128 = _DocumentManagerBundle();
  v129 = [v128 localizedStringForKey:@"Add to Dock" value:@"Add to Dock" table:@"Localizable"];
  v130 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"dock.arrow.down.rectangle"];
  v131 = [v127 commandWithTitle:v129 image:v130 action:sel_performAddFolderToDock_ input:@"t" modifierFlags:1441792 propertyList:0];

  v132 = _DocumentManagerBundle();
  v133 = [v132 localizedStringForKey:@"Add to Dock" value:@"Add to Dock" table:@"Localizable"];
  [v131 setDiscoverabilityTitle:v133];

  v134 = MEMORY[0x1E69DCC60];
  v480 = v117;
  v481 = v111;
  v559[0] = v111;
  v559[1] = v117;
  v478 = v131;
  v479 = v124;
  v559[2] = v124;
  v559[3] = v131;
  v135 = [MEMORY[0x1E695DEC8] arrayWithObjects:v559 count:4];
  v527 = [v134 menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:v135];

  v136 = _DocumentManagerBundle();
  v137 = [v136 localizedStringForKey:@"Delete" value:@"Delete" table:@"Localizable"];
  v138 = _DocumentManagerBundle();
  v139 = [v138 localizedStringForKey:@"Delete" value:@"Delete" table:@"Localizable"];
  v140 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  v141 = MEMORY[0x1E69DC8B8];
  v142 = _DocumentManagerBundle();
  v143 = [v142 localizedStringForKey:@"Delete Immediately…" value:@"Delete Immediately…" table:@"Localizable"];
  v144 = [v141 alternateWithTitle:v143 action:sel_performDeleteNow_ modifierFlags:1572864];
  v558 = v144;
  v145 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v558 count:1];
  v526 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v137 discoverabilityTitle:v139 image:v140 action:sel_performDelete_ input:@"\b" modifierFlags:0x100000 attributes:2 alternates:v145];

  v146 = MEMORY[0x1E69DCBA0];
  v524 = _DocumentManagerBundle();
  v147 = [v524 localizedStringForKey:@"Eject" value:@"Eject" table:@"Localizable"];
  v520 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eject"];
  v148 = MEMORY[0x1E69DC8B8];
  v522 = _DocumentManagerBundle();
  v149 = [v522 localizedStringForKey:@"Eject" value:@"Eject" table:@"Localizable"];
  v150 = [v148 alternateWithTitle:v149 action:sel_performEjectMedium_ modifierFlags:1310720];
  v557[0] = v150;
  v151 = MEMORY[0x1E69DC8B8];
  v152 = _DocumentManagerBundle();
  v153 = [v152 localizedStringForKey:@"Eject" value:@"Eject" table:@"Localizable"];
  v154 = [v151 alternateWithTitle:v153 action:sel_performEjectMedium_ modifierFlags:1572864];
  v557[1] = v154;
  v155 = [MEMORY[0x1E695DEC8] arrayWithObjects:v557 count:2];
  v156 = [v146 commandWithTitle:v147 image:v520 action:sel_performEjectMedium_ input:@"e" modifierFlags:0x100000 propertyList:0 alternates:v155];

  v157 = _DocumentManagerBundle();
  v158 = [v157 localizedStringForKey:@"Eject" value:@"Eject" table:@"Localizable"];
  [v156 setDiscoverabilityTitle:v158];

  v159 = MEMORY[0x1E69DCC60];
  v556[0] = v526;
  v556[1] = v156;
  v477 = v156;
  v160 = [MEMORY[0x1E695DEC8] arrayWithObjects:v556 count:2];
  v525 = [v159 menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:v160];

  v161 = _DocumentManagerBundle();
  v162 = [v161 localizedStringForKey:@"Scan Documents" value:@"Scan Documents" table:@"Localizable"];
  v163 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.viewfinder"];
  v164 = [(DOCKeyCommandController *)selfCopy _commandWithTitle:v162 discoverabilityTitle:0 image:v163 action:sel_performScanDocuments_ alternates:0];

  v165 = MEMORY[0x1E69DCC60];
  v476 = v164;
  v555 = v164;
  v166 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v555 count:1];
  v523 = [v165 menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:v166];

  v167 = MEMORY[0x1E69DCBA0];
  v168 = _DocumentManagerBundle();
  v169 = [v168 localizedStringForKey:@"Find" value:@"Find" table:@"Localizable"];
  v170 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"magnifyingglass"];
  v171 = [v167 commandWithTitle:v169 image:v170 action:sel_performFind_ input:@"f" modifierFlags:0x100000 propertyList:0];

  v172 = _DocumentManagerBundle();
  v173 = [v172 localizedStringForKey:@"Find" value:@"Find" table:@"Localizable"];
  [v171 setDiscoverabilityTitle:v173];

  v174 = MEMORY[0x1E69DCBA0];
  v175 = _DocumentManagerBundle();
  v176 = [v175 localizedStringForKey:@"Find" value:@"Find" table:@"Localizable"];
  v177 = [v174 commandWithTitle:v176 image:0 action:sel_performFind_ input:@"f" modifierFlags:1572864 propertyList:MEMORY[0x1E695E0F8]];

  v178 = _DocumentManagerBundle();
  v179 = [v178 localizedStringForKey:@"Find" value:@"Find" table:@"Localizable"];
  [v177 setDiscoverabilityTitle:v179];

  [v177 setAttributes:4];
  v180 = MEMORY[0x1E69DCC60];
  v474 = v177;
  v475 = v171;
  v554[0] = v171;
  v554[1] = v177;
  v181 = [MEMORY[0x1E695DEC8] arrayWithObjects:v554 count:2];
  v521 = [v180 menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:v181];

  v182 = MEMORY[0x1E69DCBA0];
  v183 = _DocumentManagerBundle();
  v184 = [v183 localizedStringForKey:@"Undo" value:@"Undo" table:@"Localizable"];
  v185 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.backward"];
  v519 = [v182 commandWithTitle:v184 image:v185 action:sel_undo_ input:@"z" modifierFlags:0x100000 propertyList:0];

  v186 = _DocumentManagerBundle();
  v187 = [v186 localizedStringForKey:@"Undo" value:@"Undo" table:@"Localizable"];
  [v519 setDiscoverabilityTitle:v187];

  v188 = MEMORY[0x1E69DCBA0];
  v189 = _DocumentManagerBundle();
  v190 = [v189 localizedStringForKey:@"Redo" value:@"Redo" table:@"Localizable"];
  v191 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.forward"];
  v518 = [v188 commandWithTitle:v190 image:v191 action:sel_redo_ input:@"z" modifierFlags:1179648 propertyList:0];

  v192 = _DocumentManagerBundle();
  v193 = [v192 localizedStringForKey:@"Redo" value:@"Redo" table:@"Localizable"];
  [v518 setDiscoverabilityTitle:v193];

  v194 = MEMORY[0x1E69DCBA0];
  v195 = _DocumentManagerBundle();
  v196 = [v195 localizedStringForKey:@"Copy" value:@"Copy" table:@"Localizable"];
  v197 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
  v198 = MEMORY[0x1E69DC8B8];
  v199 = _DocumentManagerBundle();
  v200 = [v199 localizedStringForKey:@"Copy as Pathname" value:@"Copy as Pathname" table:@"Localizable"];
  v201 = [v198 alternateWithTitle:v200 action:sel_performCopyAsPathname_ modifierFlags:1572864];
  v553 = v201;
  v202 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v553 count:1];
  v517 = [v194 commandWithTitle:v196 image:v197 action:sel_copy_ input:@"c" modifierFlags:0x100000 propertyList:0 alternates:v202];

  v203 = _DocumentManagerBundle();
  v204 = [v203 localizedStringForKey:@"Copy" value:@"Copy" table:@"Localizable"];
  [v517 setDiscoverabilityTitle:v204];

  v205 = MEMORY[0x1E69DCBA0];
  v206 = _DocumentManagerBundle();
  v207 = [v206 localizedStringForKey:@"Paste" value:@"Paste" table:@"Localizable"];
  v208 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"document.on.clipboard"];
  v209 = MEMORY[0x1E69DC8B8];
  v210 = _DocumentManagerBundle();
  v211 = [v210 localizedStringForKey:@"Move Here" value:@"Move Here" table:@"Localizable"];
  v212 = [v209 alternateWithTitle:v211 action:sel_performMoveHere_ modifierFlags:1572864];
  v552 = v212;
  v213 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v552 count:1];
  v516 = [v205 commandWithTitle:v207 image:v208 action:sel_paste_ input:@"v" modifierFlags:0x100000 propertyList:0 alternates:v213];

  v214 = _DocumentManagerBundle();
  v215 = [v214 localizedStringForKey:@"Paste" value:@"Paste" table:@"Localizable"];
  [v516 setDiscoverabilityTitle:v215];

  v216 = MEMORY[0x1E69DCBA0];
  v217 = _DocumentManagerBundle();
  v218 = [v217 localizedStringForKey:@"Select All" value:@"Select All" table:@"Localizable"];
  v219 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"character.textbox"];
  v220 = MEMORY[0x1E69DC8B8];
  v221 = _DocumentManagerBundle();
  v222 = [v221 localizedStringForKey:@"Deselect All" value:@"Deselect All" table:@"Localizable"];
  v223 = [v220 alternateWithTitle:v222 action:sel_performDeselectAll_ modifierFlags:1572864];
  v551 = v223;
  v224 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v551 count:1];
  v225 = [v216 commandWithTitle:v218 image:v219 action:sel_selectAll_ input:@"a" modifierFlags:0x100000 propertyList:0 alternates:v224];

  v226 = _DocumentManagerBundle();
  v227 = [v226 localizedStringForKey:@"Select All" value:@"Select All" table:@"Localizable"];
  [v225 setDiscoverabilityTitle:v227];

  v228 = MEMORY[0x1E69DCC60];
  v550[0] = v519;
  v550[1] = v518;
  v550[2] = v517;
  v550[3] = v516;
  v473 = v225;
  v550[4] = v225;
  v229 = [MEMORY[0x1E695DEC8] arrayWithObjects:v550 count:5];
  v515 = [v228 menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:v229];

  v230 = _DocumentManagerBundle();
  v231 = [v230 localizedStringForKey:@"as Icons" value:@"as Icons" table:@"Localizable"];
  v232 = _DocumentManagerBundle();
  v233 = [v232 localizedStringForKey:@"View as Icons" value:@"View as Icons" table:@"Localizable"];
  v234 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.grid.2x2"];
  v514 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v231 discoverabilityTitle:v233 image:v234 action:sel_performViewAsIcons_ input:@"1" modifierFlags:0x100000 attributes:0 alternates:0];

  v235 = _DocumentManagerBundle();
  v236 = [v235 localizedStringForKey:@"as List" value:@"as List" table:@"Localizable"];
  v237 = _DocumentManagerBundle();
  v238 = [v237 localizedStringForKey:@"View as List" value:@"View as List" table:@"Localizable"];
  v239 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"list.bullet"];
  v240 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v236 discoverabilityTitle:v238 image:v239 action:sel_performViewAsList_ input:@"2" modifierFlags:0x100000 attributes:0 alternates:0];

  v241 = _DocumentManagerBundle();
  v242 = [v241 localizedStringForKey:@"as Columns" value:@"as Columns" table:@"Localizable"];
  v243 = _DocumentManagerBundle();
  v244 = [v243 localizedStringForKey:@"View as Columns" value:@"View as Columns" table:@"Localizable"];
  v245 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.split.3x1"];
  v246 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v242 discoverabilityTitle:v244 image:v245 action:sel_performViewAsColumns_ input:@"3" modifierFlags:0x100000 attributes:0 alternates:0];

  v247 = MEMORY[0x1E69DCC60];
  v549[0] = v514;
  v471 = v246;
  v472 = v240;
  v549[1] = v240;
  v549[2] = v246;
  v248 = [MEMORY[0x1E695DEC8] arrayWithObjects:v549 count:3];
  v513 = [v247 menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:33 children:v248];

  v249 = MEMORY[0x1E69DCBA0];
  v250 = _DocumentManagerBundle();
  v251 = [v250 localizedStringForKey:@"Use Groups" value:@"Use Groups" table:@"Localizable"];
  v252 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.grid.3x1.below.line.grid.1x2"];
  v512 = [v249 commandWithTitle:v251 image:v252 action:sel_performUseGrouping_ input:@"0" modifierFlags:1310720 propertyList:0];

  v253 = _DocumentManagerBundle();
  v254 = [v253 localizedStringForKey:@"Use Groups" value:@"Use Groups" table:@"Localizable"];
  [v512 setDiscoverabilityTitle:v254];

  v255 = _DocumentManagerBundle();
  v256 = [v255 localizedStringForKey:@"Name" value:@"Name" table:@"Localizable"];
  v257 = _DocumentManagerBundle();
  v258 = [v257 localizedStringForKey:@"Sort by Name" value:@"Sort by Name" table:@"Localizable"];
  v511 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v256 discoverabilityTitle:v258 image:0 action:sel_performSortByName_ input:@"1" modifierFlags:1835008 attributes:0 alternates:0];

  v259 = _DocumentManagerBundle();
  v260 = [v259 localizedStringForKey:@"Kind" value:@"Kind" table:@"Localizable"];
  v261 = _DocumentManagerBundle();
  v262 = [v261 localizedStringForKey:@"Sort by Kind" value:@"Sort by Kind" table:@"Localizable"];
  v510 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v260 discoverabilityTitle:v262 image:0 action:sel_performSortByKind_ input:@"2" modifierFlags:1835008 attributes:0 alternates:0];

  v263 = _DocumentManagerBundle();
  v264 = [v263 localizedStringForKey:@"Date Last Opened" value:@"Date Last Opened" table:@"Localizable"];
  v265 = _DocumentManagerBundle();
  v266 = [v265 localizedStringForKey:@"Sort by Date Last Opened" value:@"Sort by Date Last Opened" table:@"Localizable"];
  v509 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v264 discoverabilityTitle:v266 image:0 action:sel_performSortByDateLastOpened_ input:@"3" modifierFlags:1835008 attributes:0 alternates:0];

  v267 = _DocumentManagerBundle();
  v268 = [v267 localizedStringForKey:@"Date Added" value:@"Date Added" table:@"Localizable"];
  v269 = _DocumentManagerBundle();
  v270 = [v269 localizedStringForKey:@"Sort by Date Added" value:@"Sort by Date Added" table:@"Localizable"];
  v508 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v268 discoverabilityTitle:v270 image:0 action:sel_performSortByDateAdded_ input:@"4" modifierFlags:1835008 attributes:0 alternates:0];

  v271 = _DocumentManagerBundle();
  v272 = [v271 localizedStringForKey:@"Date Modified" value:@"Date Modified" table:@"Localizable"];
  v273 = _DocumentManagerBundle();
  v274 = [v273 localizedStringForKey:@"Sort by Date Modified" value:@"Sort by Date Modified" table:@"Localizable"];
  v507 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v272 discoverabilityTitle:v274 image:0 action:sel_performSortByDateModified_ input:@"5" modifierFlags:1835008 attributes:0 alternates:0];

  v275 = _DocumentManagerBundle();
  v276 = [v275 localizedStringForKey:@"Date Created" value:@"Date Created" table:@"Localizable"];
  v277 = _DocumentManagerBundle();
  v278 = [v277 localizedStringForKey:@"Sort by Date Created" value:@"Sort by Date Created" table:@"Localizable"];
  v279 = [(DOCKeyCommandController *)selfCopy _commandWithTitle:v276 discoverabilityTitle:v278 image:0 action:sel_performSortByDateCreated_ alternates:0];

  v280 = _DocumentManagerBundle();
  v281 = [v280 localizedStringForKey:@"Size" value:@"Size" table:@"Localizable"];
  v282 = _DocumentManagerBundle();
  v283 = [v282 localizedStringForKey:@"Sort by Size" value:@"Sort by Size" table:@"Localizable"];
  v284 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v281 discoverabilityTitle:v283 image:0 action:sel_performSortBySize_ input:@"6" modifierFlags:1835008 attributes:0 alternates:0];

  v285 = _DocumentManagerBundle();
  v286 = [v285 localizedStringForKey:@"Tags" value:@"Tags" table:@"Localizable"];
  v287 = _DocumentManagerBundle();
  v288 = [v287 localizedStringForKey:@"Sort by Tags" value:@"Sort by Tags" table:@"Localizable"];
  v289 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v286 discoverabilityTitle:v288 image:0 action:sel_performSortByTags_ input:@"7" modifierFlags:1835008 attributes:0 alternates:0];

  v290 = MEMORY[0x1E69DCC60];
  v291 = _DocumentManagerBundle();
  v292 = [v291 localizedStringForKey:@"Sort By" value:@"Sort By" table:@"Localizable"];
  v293 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.arrow.down"];
  v548[0] = v511;
  v548[1] = v510;
  v548[2] = v509;
  v548[3] = v508;
  v548[4] = v507;
  v469 = v284;
  v470 = v279;
  v548[5] = v279;
  v548[6] = v284;
  v468 = v289;
  v548[7] = v289;
  v294 = [MEMORY[0x1E695DEC8] arrayWithObjects:v548 count:8];
  v506 = [v290 menuWithTitle:v292 image:v293 identifier:0 options:32 children:v294];

  v295 = _DocumentManagerBundle();
  v296 = [v295 localizedStringForKey:@"None" value:@"None" table:@"Localizable"];
  v297 = [(DOCKeyCommandController *)selfCopy _commandWithTitle:v296 discoverabilityTitle:0 image:0 action:sel_performGroupByNone_ alternates:0];

  v298 = MEMORY[0x1E69DCC60];
  v467 = v297;
  v547 = v297;
  v299 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v547 count:1];
  v505 = [v298 menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:v299];

  v300 = _DocumentManagerBundle();
  v301 = [v300 localizedStringForKey:@"Kind" value:@"Kind" table:@"Localizable"];
  v302 = _DocumentManagerBundle();
  v303 = [v302 localizedStringForKey:@"Group by Kind" value:@"Group by Kind" table:@"Localizable"];
  v504 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v301 discoverabilityTitle:v303 image:0 action:sel_performGroupByKind_ input:@"2" modifierFlags:1310720 attributes:0 alternates:0];

  v304 = _DocumentManagerBundle();
  v305 = [v304 localizedStringForKey:@"Date" value:@"Date" table:@"Localizable"];
  v306 = _DocumentManagerBundle();
  v307 = [v306 localizedStringForKey:@"Group by Date" value:@"Group by Date" table:@"Localizable"];
  v308 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v305 discoverabilityTitle:v307 image:0 action:sel_performGroupByDate_ input:@"5" modifierFlags:1310720 attributes:0 alternates:0];

  v309 = _DocumentManagerBundle();
  v310 = [v309 localizedStringForKey:@"Date" value:@"Date" table:@"Localizable"];
  v311 = _DocumentManagerBundle();
  v312 = [v311 localizedStringForKey:@"Group by Date" value:@"Group by Date" table:@"Localizable"];
  v313 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v310 discoverabilityTitle:v312 image:0 action:sel_performGroupByDate_ input:@"3" modifierFlags:1310720 attributes:4 alternates:0];

  v314 = _DocumentManagerBundle();
  v315 = [v314 localizedStringForKey:@"Size" value:@"Size" table:@"Localizable"];
  v316 = _DocumentManagerBundle();
  v317 = [v316 localizedStringForKey:@"Group by Size" value:@"Group by Size" table:@"Localizable"];
  v318 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v315 discoverabilityTitle:v317 image:0 action:sel_performGroupBySize_ input:@"6" modifierFlags:1310720 attributes:0 alternates:0];

  v319 = _DocumentManagerBundle();
  v320 = [v319 localizedStringForKey:@"Shared by" value:@"Shared by" table:@"Localizable"];
  v321 = _DocumentManagerBundle();
  v322 = [v321 localizedStringForKey:@"Group by Shared by" value:@"Group by Shared by" table:@"Localizable"];
  v323 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v320 discoverabilityTitle:v322 image:0 action:sel_performGroupBySharedBy_ input:@"8" modifierFlags:1310720 attributes:0 alternates:0];

  v324 = MEMORY[0x1E69DCC60];
  v325 = _DocumentManagerBundle();
  v326 = [v325 localizedStringForKey:@"Group By" value:@"Group By" table:@"Localizable"];
  v546[0] = v505;
  v546[1] = v504;
  v465 = v313;
  v466 = v308;
  v546[2] = v308;
  v546[3] = v313;
  v463 = v323;
  v464 = v318;
  v546[4] = v318;
  v546[5] = v323;
  v327 = [MEMORY[0x1E695DEC8] arrayWithObjects:v546 count:6];
  v328 = [v324 menuWithTitle:v326 image:0 identifier:0 options:32 children:v327];

  v329 = MEMORY[0x1E69DCC60];
  v545[0] = v512;
  v545[1] = v506;
  v462 = v328;
  v545[2] = v328;
  v330 = [MEMORY[0x1E695DEC8] arrayWithObjects:v545 count:3];
  v461 = [v329 menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:v330];

  array3 = [MEMORY[0x1E695DF70] array];
  v332 = MEMORY[0x1E69DCBA0];
  v333 = _DocumentManagerBundle();
  v334 = [v333 localizedStringForKey:@"Show View Options" value:@"Show View Options" table:@"Localizable"];
  v335 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gearshape"];
  v336 = [v332 commandWithTitle:v334 image:v335 action:sel_performShowViewOptions_ input:@"j" modifierFlags:0x100000 propertyList:0];

  v337 = _DocumentManagerBundle();
  v338 = [v337 localizedStringForKey:@"Show View Options" value:@"Show View Options" table:@"Localizable"];
  [v336 setDiscoverabilityTitle:v338];

  v459 = v336;
  [array3 addObject:v336];
  viewOptionsSizeSetting = [MEMORY[0x1E699A3F0] viewOptionsSizeSetting];
  LODWORD(v338) = [viewOptionsSizeSetting isEnabled];

  if (v338)
  {
    v340 = MEMORY[0x1E69DCBA0];
    v341 = _DocumentManagerBundle();
    v342 = [v341 localizedStringForKey:@"Make Icons Smaller" value:@"Make Icons Smaller" table:@"Localizable"];
    v343 = MEMORY[0x1E695E0F8];
    v344 = [v340 commandWithTitle:v342 image:0 action:sel_performViewAsUserSizeSmaller_ input:@"-" modifierFlags:0x100000 propertyList:MEMORY[0x1E695E0F8]];

    v345 = _DocumentManagerBundle();
    v346 = [v345 localizedStringForKey:@"Make Icons Smaller" value:@"Make Icons Smaller" table:@"Localizable"];
    [v344 setDiscoverabilityTitle:v346];

    [v344 setAttributes:4];
    [array3 addObject:v344];
    v347 = MEMORY[0x1E69DCBA0];
    v348 = _DocumentManagerBundle();
    v349 = [v348 localizedStringForKey:@"Make Icons Bigger" value:@"Make Icons Bigger" table:@"Localizable"];
    v350 = [v347 commandWithTitle:v349 image:0 action:sel_performViewAsUserSizeLarger_ input:@"+" modifierFlags:0x100000 propertyList:v343];

    v351 = _DocumentManagerBundle();
    v352 = [v351 localizedStringForKey:@"Make Icons Bigger" value:@"Make Icons Bigger" table:@"Localizable"];
    [v350 setDiscoverabilityTitle:v352];

    [v350 setAttributes:4];
    [array3 addObject:v350];
  }

  v460 = array3;
  v458 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:array3];
  v353 = _DocumentManagerBundle();
  v354 = [v353 localizedStringForKey:@"Back" value:@"Back" table:@"Localizable"];
  v355 = _DocumentManagerBundle();
  v356 = [v355 localizedStringForKey:@"Go Back" value:@"Go Back" table:@"Localizable"];
  v357 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.backward"];
  v503 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v354 discoverabilityTitle:v356 image:v357 action:sel_performGoBackInHistory_ input:@"[" modifierFlags:0x100000 attributes:0 alternates:0];

  v358 = _DocumentManagerBundle();
  v359 = [v358 localizedStringForKey:@"Forward" value:@"Forward" table:@"Localizable"];
  v360 = _DocumentManagerBundle();
  v361 = [v360 localizedStringForKey:@"Go Forward" value:@"Go Forward" table:@"Localizable"];
  v362 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
  v502 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v359 discoverabilityTitle:v361 image:v362 action:sel_performGoForwardInHistory_ input:@"]" modifierFlags:0x100000 attributes:0 alternates:0];

  v500 = _DocumentManagerBundle();
  v363 = [v500 localizedStringForKey:@"Enclosing Folder" value:@"Enclosing Folder" table:@"Localizable"];
  v364 = _DocumentManagerBundle();
  v365 = [v364 localizedStringForKey:@"Go to Enclosing Folder" value:@"Go to Enclosing Folder" table:@"Localizable"];
  v366 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.folder"];
  v367 = *MEMORY[0x1E69DDF30];
  v368 = MEMORY[0x1E69DC8B8];
  v369 = _DocumentManagerBundle();
  v370 = [v369 localizedStringForKey:@"Enclosing Folder in New Window" value:@"Enclosing Folder in New Window" table:@"Localizable"];
  v371 = [v368 alternateWithTitle:v370 action:sel_performGoToEnclosingFolderInNewWindow_ modifierFlags:1310720];
  v544 = v371;
  v372 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v544 count:1];
  v373 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v363 discoverabilityTitle:v365 image:v366 action:sel_performGoToEnclosingFolder_ input:v367 modifierFlags:0x100000 attributes:0 alternates:v372];

  v374 = MEMORY[0x1E69DCC60];
  v543[0] = v503;
  v543[1] = v502;
  v457 = v373;
  v543[2] = v373;
  v375 = [MEMORY[0x1E695DEC8] arrayWithObjects:v543 count:3];
  v456 = [v374 menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:v375];

  array4 = [MEMORY[0x1E695DF70] array];
  v376 = _DocumentManagerBundle();
  v377 = [v376 localizedStringForKey:@"Recents" value:@"Recents" table:@"Localizable"];
  v378 = _DocumentManagerBundle();
  v379 = [v378 localizedStringForKey:@"Go to Recents" value:@"Go to Recents" table:@"Localizable"];
  v380 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock"];
  v381 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v377 discoverabilityTitle:v379 image:v380 action:sel_performGoToRecents_ input:@"f" modifierFlags:1179648 attributes:0 alternates:0];

  [array4 addObject:v381];
  v382 = _DocumentManagerBundle();
  v383 = [v382 localizedStringForKey:@"Recents" value:@"Recents" table:@"Localizable"];
  v384 = _DocumentManagerBundle();
  v385 = [v384 localizedStringForKey:@"Go to Recents" value:@"Go to Recents" table:@"Localizable"];
  v386 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock"];
  v387 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v383 discoverabilityTitle:v385 image:v386 action:sel_performGoToRecents_ input:@"r" modifierFlags:1179648 attributes:4 alternates:0];

  v455 = v387;
  [array4 addObject:v387];
  if (!DOCUsePadIdiomForTraits(0))
  {
    v388 = _DocumentManagerBundle();
    v389 = [v388 localizedStringForKey:@"Browse" value:@"Browse" table:@"Localizable"];
    v390 = _DocumentManagerBundle();
    v391 = [v390 localizedStringForKey:@"Go to Browse" value:@"Go to Browse" table:@"Localizable"];
    v392 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v389 discoverabilityTitle:v391 image:0 action:sel_performGoToBrowse_ input:@"b" modifierFlags:1179648 attributes:0 alternates:0];

    [array4 addObject:v392];
  }

  v393 = _DocumentManagerBundle();
  v394 = [v393 localizedStringForKey:@"Documents" value:@"Documents" table:@"Localizable"];
  v395 = _DocumentManagerBundle();
  v396 = [v395 localizedStringForKey:@"Go to Documents" value:@"Go to Documents" table:@"Localizable"];
  v397 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"document"];
  v454 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v394 discoverabilityTitle:v396 image:v397 action:sel_performGoToDocuments_ input:@"o" modifierFlags:1179648 attributes:0 alternates:0];

  [array4 addObject:v454];
  v398 = _DocumentManagerBundle();
  v399 = [v398 localizedStringForKey:@"Desktop" value:@"Desktop" table:@"Localizable"];
  v400 = _DocumentManagerBundle();
  v401 = [v400 localizedStringForKey:@"Go to Desktop" value:@"Go to Desktop" table:@"Localizable"];
  v402 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"menubar.dock.rectangle"];
  v453 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v399 discoverabilityTitle:v401 image:v402 action:sel_performGoToDesktop_ input:@"d" modifierFlags:1179648 attributes:0 alternates:0];

  [array4 addObject:v453];
  v403 = _DocumentManagerBundle();
  v404 = [v403 localizedStringForKey:@"Downloads" value:@"Downloads" table:@"Localizable"];
  v405 = _DocumentManagerBundle();
  v406 = [v405 localizedStringForKey:@"Go to Downloads" value:@"Go to Downloads" table:@"Localizable"];
  v407 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.down.circle"];
  v452 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v404 discoverabilityTitle:v406 image:v407 action:sel_performGoToDownloads_ input:@"l" modifierFlags:1572864 attributes:0 alternates:0];

  [array4 addObject:v452];
  v451 = [MEMORY[0x1E69673E8] providerDomainWithID:*MEMORY[0x1E699A390] cachePolicy:1 error:0];
  v408 = _DocumentManagerBundle();
  v450 = [v408 localizedStringForKey:@"Go to “%@”" value:@"Go to “%@”" table:@"Localizable"];

  v449 = DOCLocalizedDisplayName();
  v449 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v450, v449];
  v410 = MEMORY[0x1E69DCAB8];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  doc_symbolName = [currentDevice doc_symbolName];
  v413 = [v410 systemImageNamed:doc_symbolName];
  v448 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v449 discoverabilityTitle:v449 image:v413 action:sel_performGoToOnMyDevice_ input:@"h" modifierFlags:1179648 attributes:0 alternates:0];

  [array4 addObject:v448];
  v414 = _DocumentManagerBundle();
  v415 = [v414 localizedStringForKey:@"iCloud Drive" value:@"iCloud Drive" table:@"Localizable"];
  v416 = _DocumentManagerBundle();
  v417 = [v416 localizedStringForKey:@"Go to iCloud Drive" value:@"Go to iCloud Drive" table:@"Localizable"];
  v418 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"icloud"];
  v447 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v415 discoverabilityTitle:v417 image:v418 action:sel_performGoToICloudDrive_ input:@"i" modifierFlags:1179648 attributes:0 alternates:0];

  [array4 addObject:v447];
  v419 = _DocumentManagerBundle();
  v420 = [v419 localizedStringForKey:@"Shared" value:@"Shared" table:@"Localizable"];
  v421 = _DocumentManagerBundle();
  v422 = [v421 localizedStringForKey:@"Go to Shared" value:@"Go to Shared" table:@"Localizable"];
  v423 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"folder.badge.person.crop"];
  v446 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v420 discoverabilityTitle:v422 image:v423 action:sel_performGoToShared_ input:@"s" modifierFlags:1179648 attributes:0 alternates:0];

  [array4 addObject:v446];
  v445 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:array4];
  v424 = _DocumentManagerBundle();
  v425 = [v424 localizedStringForKey:@"Go to Folder…" value:@"Go to Folder…" table:@"Localizable"];
  v426 = _DocumentManagerBundle();
  v427 = [v426 localizedStringForKey:@"Go to Folder…" value:@"Go to Folder…" table:@"Localizable"];
  v428 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.forward.folder"];
  v444 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v425 discoverabilityTitle:v427 image:v428 action:sel_performGoToLocation_ input:@"g" modifierFlags:1179648 attributes:0 alternates:0];

  v429 = _DocumentManagerBundle();
  v430 = [v429 localizedStringForKey:@"Connect to Server…" value:@"Connect to Server…" table:@"Localizable"];
  v431 = _DocumentManagerBundle();
  v432 = [v431 localizedStringForKey:@"Connect to Server…" value:@"Connect to Server…" table:@"Localizable"];
  v433 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.connected.to.line.below"];
  v534 = [(DOCKeyCommandController *)selfCopy _keyCommandWithTitle:v430 discoverabilityTitle:v432 image:v433 action:sel_performConnectToServer_ input:@"k" modifierFlags:0x100000 attributes:0 alternates:0];

  v434 = MEMORY[0x1E69DCC60];
  v542[0] = v444;
  v542[1] = v534;
  v435 = [MEMORY[0x1E695DEC8] arrayWithObjects:v542 count:2];
  v436 = [v434 menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:v435];

  v540[0] = *MEMORY[0x1E69DE0C0];
  v539 = v532;
  v437 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v539 count:1];
  v541[0] = v437;
  v540[1] = *MEMORY[0x1E69DE100];
  v538[0] = v530;
  v538[1] = v529;
  v538[2] = v528;
  v538[3] = v527;
  v538[4] = v525;
  v538[5] = v523;
  v538[6] = v521;
  v438 = [MEMORY[0x1E695DEC8] arrayWithObjects:v538 count:7];
  v541[1] = v438;
  v540[2] = *MEMORY[0x1E69DE0F8];
  v537 = v515;
  v439 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v537 count:1];
  v541[2] = v439;
  v540[3] = *MEMORY[0x1E69DE230];
  v536[0] = v513;
  v536[1] = v461;
  v536[2] = v458;
  v440 = [MEMORY[0x1E695DEC8] arrayWithObjects:v536 count:3];
  v541[3] = v440;
  v540[4] = @"com.apple.DocumentManager.menu.main.go";
  v535[0] = v456;
  v535[1] = v445;
  v535[2] = v436;
  v441 = [MEMORY[0x1E695DEC8] arrayWithObjects:v535 count:3];
  v541[4] = v441;
  v443 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v541 forKeys:v540 count:5];

  return v443;
}

- (id)_menuOrder
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69DE100];
  v6[0] = *MEMORY[0x1E69DE0C0];
  v6[1] = v2;
  v3 = *MEMORY[0x1E69DE230];
  v6[2] = *MEMORY[0x1E69DE0F8];
  v6[3] = v3;
  v6[4] = @"com.apple.DocumentManager.menu.main.go";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];

  return v4;
}

- (id)_unwantedMenuIdentifiers
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69DE118];
  v6[0] = *MEMORY[0x1E69DE160];
  v6[1] = v2;
  v3 = *MEMORY[0x1E69DE218];
  v6[2] = *MEMORY[0x1E69DE0F8];
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

- (id)_menuTitleForCustomMenuWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.DocumentManager.menu.main.go"])
  {
    v6 = _DocumentManagerBundle();
    currentHandler = v6;
    v8 = @"Go [Menu title]";
    v9 = @"Go";
LABEL_5:
    v10 = [v6 localizedStringForKey:v8 value:v9 table:@"Localizable"];
    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x1E69DE0F8]])
  {
    v6 = _DocumentManagerBundle();
    currentHandler = v6;
    v8 = @"Edit [Menu title]";
    v9 = @"Edit";
    goto LABEL_5;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DOCKeyCommandController.m" lineNumber:734 description:{@"Incomplete definition of menu titles, menu identifier missing: %@", identifierCopy}];
  v10 = 0;
LABEL_7:

  return v10;
}

- (void)buildWithBuilder:(id)builder
{
  v98 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  _menuDefinition = [(DOCKeyCommandController *)self _menuDefinition];
  _menuOrder = [(DOCKeyCommandController *)self _menuOrder];
  v71 = _menuDefinition;
  allKeys = [_menuDefinition allKeys];
  selfCopy = self;
  _unwantedMenuIdentifiers = [(DOCKeyCommandController *)self _unwantedMenuIdentifiers];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v9 = allKeys;
  v10 = [v9 countByEnumeratingWithState:&v90 objects:v97 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v91;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v91 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (([_menuOrder containsObject:*(*(&v90 + 1) + 8 * i)] & 1) == 0)
        {
          [DOCKeyCommandController buildWithBuilder:];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v90 objects:v97 count:16];
    }

    while (v11);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v14 = _unwantedMenuIdentifiers;
  v15 = [v14 countByEnumeratingWithState:&v86 objects:v96 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v87;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v87 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [builderCopy removeMenuForIdentifier:*(*(&v86 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v86 objects:v96 count:16];
    }

    while (v16);
  }

  v74 = _menuOrder;
  v65 = v9;

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  _menuOrder2 = [(DOCKeyCommandController *)selfCopy _menuOrder];
  v20 = [_menuOrder2 countByEnumeratingWithState:&v82 objects:v95 count:16];
  v64 = v14;
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v83;
    obj = *MEMORY[0x1E69DE190];
    do
    {
      v24 = 0;
      v25 = v22;
      do
      {
        if (*v83 != v23)
        {
          objc_enumerationMutation(_menuOrder2);
        }

        v26 = *(*(&v82 + 1) + 8 * v24);
        v27 = [builderCopy menuForIdentifier:v26];
        if (!v27)
        {
          v28 = [(DOCKeyCommandController *)selfCopy _menuTitleForCustomMenuWithIdentifier:v26];
          v29 = [MEMORY[0x1E69DCC60] menuWithTitle:v28 image:0 identifier:v26 options:0 children:MEMORY[0x1E695E0F0]];
          if (v25)
          {
            [builderCopy insertSiblingMenu:v29 afterMenuForIdentifier:v25];
          }

          else
          {
            [builderCopy insertChildMenu:v29 atStartOfMenuForIdentifier:obj];
          }
        }

        v22 = v26;

        ++v24;
        v25 = v22;
      }

      while (v21 != v24);
      v21 = [_menuOrder2 countByEnumeratingWithState:&v82 objects:v95 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obja = v74;
  v30 = [obja countByEnumeratingWithState:&v78 objects:v94 count:16];
  v31 = v71;
  if (v30)
  {
    v32 = v30;
    v33 = *v79;
    v34 = *MEMORY[0x1E69DE0C0];
    v75 = *MEMORY[0x1E69DE100];
    v67 = *MEMORY[0x1E69DE230];
    v66 = *MEMORY[0x1E69DE0D8];
    v73 = *MEMORY[0x1E69DE170];
    v69 = *MEMORY[0x1E69DE0C0];
    v70 = *v79;
    do
    {
      v35 = 0;
      v68 = v32;
      do
      {
        if (*v79 != v33)
        {
          objc_enumerationMutation(obja);
        }

        v36 = *(*(&v78 + 1) + 8 * v35);
        v37 = [v31 objectForKeyedSubscript:v36];
        if ([v36 isEqual:v34])
        {
          if ([v37 count] != 1)
          {
            [DOCKeyCommandController buildWithBuilder:];
          }

          v38 = [v37 objectAtIndexedSubscript:0];
          [builderCopy insertSiblingMenu:v38 afterMenuForIdentifier:v73];
        }

        else if ([v36 isEqual:v75])
        {
          if ([v37 count] != 7)
          {
            [DOCKeyCommandController buildWithBuilder:];
          }

          v39 = [builderCopy menuForIdentifier:v66];
          v40 = [v37 objectAtIndexedSubscript:0];
          children = [v40 children];
          v42 = [children mutableCopy];

          children2 = [v39 children];
          [v42 addObjectsFromArray:children2];

          v38 = [v39 menuByReplacingChildren:v42];

          [builderCopy replaceMenuForIdentifier:v66 withMenu:v38];
          [builderCopy insertChildMenu:v38 atStartOfMenuForIdentifier:v36];
          v44 = [v37 objectAtIndexedSubscript:1];
          [builderCopy insertSiblingMenu:v44 afterMenuForIdentifier:v66];

          v45 = [v37 objectAtIndexedSubscript:2];
          v46 = [v37 objectAtIndexedSubscript:1];
          identifier = [v46 identifier];
          [builderCopy insertSiblingMenu:v45 afterMenuForIdentifier:identifier];

          v48 = [v37 objectAtIndexedSubscript:3];
          v49 = [v37 objectAtIndexedSubscript:2];
          identifier2 = [v49 identifier];
          [builderCopy insertSiblingMenu:v48 afterMenuForIdentifier:identifier2];

          v51 = [v37 objectAtIndexedSubscript:4];
          v52 = [v37 objectAtIndexedSubscript:3];
          identifier3 = [v52 identifier];
          [builderCopy insertSiblingMenu:v51 afterMenuForIdentifier:identifier3];

          v54 = [v37 objectAtIndexedSubscript:5];
          v55 = [v37 objectAtIndexedSubscript:4];
          identifier4 = [v55 identifier];
          [builderCopy insertSiblingMenu:v54 afterMenuForIdentifier:identifier4];

          v57 = [v37 objectAtIndexedSubscript:6];
          v58 = [v37 objectAtIndexedSubscript:5];
          identifier5 = [v58 identifier];
          [builderCopy insertSiblingMenu:v57 afterMenuForIdentifier:identifier5];

          v33 = v70;
          v31 = v71;
          v32 = v68;
          v34 = v69;
        }

        else if ([v36 isEqual:v67])
        {
          if ([v37 count] != 3)
          {
            [DOCKeyCommandController buildWithBuilder:];
          }

          v60 = [v37 objectAtIndexedSubscript:0];
          [builderCopy insertChildMenu:v60 atStartOfMenuForIdentifier:v36];

          v61 = [v37 objectAtIndexedSubscript:1];
          v62 = [v37 objectAtIndexedSubscript:0];
          identifier6 = [v62 identifier];
          [builderCopy insertSiblingMenu:v61 afterMenuForIdentifier:identifier6];

          v38 = [v37 objectAtIndexedSubscript:2];
          [builderCopy insertChildMenu:v38 atEndOfMenuForIdentifier:v36];
          v33 = v70;
          v31 = v71;
          v34 = v69;
        }

        else
        {
          v38 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F5F4AEF8 image:0 identifier:0 options:1 children:v37];
          [builderCopy insertChildMenu:v38 atEndOfMenuForIdentifier:v36];
        }

        ++v35;
      }

      while (v32 != v35);
      v32 = [obja countByEnumeratingWithState:&v78 objects:v94 count:16];
    }

    while (v32);
  }
}

- (id)_keyCommandsInMenu:(id)menu
{
  v19 = *MEMORY[0x1E69E9840];
  menuCopy = menu;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  children = [menuCopy children];
  v7 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(children);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v11];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [(DOCKeyCommandController *)self _keyCommandsInMenu:v11];
            [array addObjectsFromArray:v12];
          }
        }
      }

      v8 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)allKeyCommands
{
  v28 = *MEMORY[0x1E69E9840];
  _menuDefinition = [(DOCKeyCommandController *)self _menuDefinition];
  v3 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(DOCKeyCommandController *)self _menuOrder];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [_menuDefinition objectForKeyedSubscript:*(*(&v22 + 1) + 8 * i)];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [(DOCKeyCommandController *)self _keyCommandsInMenu:*(*(&v18 + 1) + 8 * j)];
              [v3 addObjectsFromArray:v13];
            }

            v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v10);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v14 = [v3 copy];

  return v14;
}

- (id)allKeyCommandsWithAction:(SEL)action attributes:(unint64_t)attributes
{
  v20 = *MEMORY[0x1E69E9840];
  allKeyCommands = [(DOCKeyCommandController *)self allKeyCommands];
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = allKeyCommands;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) _doc_erasedKeyCommandWithWrappedAction:{action, v15}];
        [v13 setAttributes:{objc_msgSend(v13, "attributes") | attributes}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)buildWithBuilder:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)buildWithBuilder:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)buildWithBuilder:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)buildWithBuilder:.cold.4()
{
  OUTLINED_FUNCTION_4();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end