@interface EventKitTCCTableViewCell
+ (id)reuseIdentifier;
- (EventKitTCCTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 title:(id)a5 subtitle:(id)a6 symbolName:(id)a7 imageColor:(id)a8;
@end

@implementation EventKitTCCTableViewCell

+ (id)reuseIdentifier
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__EventKitTCCTableViewCell_reuseIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (reuseIdentifier_onceToken != -1)
  {
    dispatch_once(&reuseIdentifier_onceToken, block);
  }

  v2 = reuseIdentifier_reuseIdentifier;

  return v2;
}

uint64_t __43__EventKitTCCTableViewCell_reuseIdentifier__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  reuseIdentifier_reuseIdentifier = NSStringFromClass(v2);

  return MEMORY[0x2821F96F8]();
}

- (EventKitTCCTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 title:(id)a5 subtitle:(id)a6 symbolName:(id)a7 imageColor:(id)a8
{
  v159[4] = *MEMORY[0x277D85DE8];
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v154.receiver = self;
  v154.super_class = EventKitTCCTableViewCell;
  v18 = [(EventKitTCCTableViewCell *)&v154 initWithStyle:a3 reuseIdentifier:a4];
  if (v18)
  {
    v19 = [MEMORY[0x277D75348] tertiarySystemFillColor];
    [(EventKitTCCTableViewCell *)v18 setBackgroundColor:v19];

    [(EventKitTCCTableViewCell *)v18 setSeparatorInset:0.0, 16.0, 0.0, 16.0];
    v20 = objc_alloc(MEMORY[0x277D755E8]);
    v21 = *MEMORY[0x277CBF3A0];
    v22 = *(MEMORY[0x277CBF3A0] + 8);
    v23 = *(MEMORY[0x277CBF3A0] + 16);
    v24 = *(MEMORY[0x277CBF3A0] + 24);
    v25 = [v20 initWithFrame:{*MEMORY[0x277CBF3A0], v22, v23, v24}];
    [(EventKitTCCTableViewCell *)v18 setSymbolImageView:v25];

    v26 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

    v27 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    [v27 setContentMode:4];

    v28 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    v150 = v17;
    [v28 setTintColor:v17];

    v29 = MEMORY[0x277D755B8];
    v30 = *MEMORY[0x277D76A08];
    [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A08] scale:-1];
    v31 = v153 = v15;
    v151 = v16;
    v32 = [v29 systemImageNamed:v16 withConfiguration:v31];
    v33 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    [v33 setImage:v32];

    v34 = [(EventKitTCCTableViewCell *)v18 contentView];
    v35 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    [v34 addSubview:v35];

    v36 = [MEMORY[0x277D74300] preferredFontForTextStyle:v30];
    [v36 pointSize];
    v38 = v37;

    v125 = MEMORY[0x277CCAAD0];
    v147 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    v141 = [v147 centerYAnchor];
    v144 = [(EventKitTCCTableViewCell *)v18 contentView];
    v137 = [v144 centerYAnchor];
    v133 = [v141 constraintEqualToAnchor:v137];
    v159[0] = v133;
    v129 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    v118 = [v129 leadingAnchor];
    v121 = [(EventKitTCCTableViewCell *)v18 contentView];
    v39 = [v121 leadingAnchor];
    v40 = [v118 constraintEqualToAnchor:v39 constant:16.0];
    v159[1] = v40;
    v41 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    v42 = [v41 widthAnchor];
    v43 = [v42 constraintEqualToConstant:v38];
    v159[2] = v43;
    v44 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    [v44 heightAnchor];
    v45 = v152 = v14;
    v46 = [v45 constraintEqualToConstant:v38];
    v159[3] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v159 count:4];
    [v125 activateConstraints:v47];

    v48 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    LODWORD(v49) = 1144750080;
    [v48 setContentHuggingPriority:0 forAxis:v49];

    v50 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v21, v22, v23, v24}];
    [(EventKitTCCTableViewCell *)v18 setTitleLabel:v50];

    v51 = [(EventKitTCCTableViewCell *)v18 titleLabel];
    [v51 setTranslatesAutoresizingMaskIntoConstraints:0];

    v52 = MEMORY[0x277D74300];
    v53 = *MEMORY[0x277D76968];
    v54 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [v54 pointSize];
    v55 = [v52 boldSystemFontOfSize:?];
    v56 = [(EventKitTCCTableViewCell *)v18 titleLabel];
    [v56 setFont:v55];

    v57 = [(EventKitTCCTableViewCell *)v18 titleLabel];
    [v57 setAdjustsFontForContentSizeCategory:1];

    v58 = [(EventKitTCCTableViewCell *)v18 titleLabel];
    [v58 setText:v152];

    v59 = [(EventKitTCCTableViewCell *)v18 titleLabel];
    [v59 setNumberOfLines:0];

    v60 = [(EventKitTCCTableViewCell *)v18 contentView];
    v61 = [(EventKitTCCTableViewCell *)v18 titleLabel];
    [v60 addSubview:v61];

    v145 = MEMORY[0x277CCAAD0];
    v62 = [(EventKitTCCTableViewCell *)v18 titleLabel];
    v63 = [v62 topAnchor];
    v148 = [(EventKitTCCTableViewCell *)v18 contentView];
    v64 = [v148 topAnchor];
    v142 = v64;
    if (v153)
    {
      v138 = [v63 constraintEqualToAnchor:v64 constant:8.0];
      v157[0] = v138;
      v130 = [(EventKitTCCTableViewCell *)v18 titleLabel];
      v122 = [v130 leadingAnchor];
      v65 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
      v66 = [v65 trailingAnchor];
      v67 = [v122 constraintEqualToAnchor:v66 constant:16.0];
      v157[1] = v67;
      v68 = [(EventKitTCCTableViewCell *)v18 titleLabel];
      v69 = [v68 trailingAnchor];
      [(EventKitTCCTableViewCell *)v18 contentView];
      v70 = v126 = v62;
      [v70 trailingAnchor];
      v71 = v119 = v63;
      v72 = [v69 constraintEqualToAnchor:v71 constant:-16.0];
      v157[2] = v72;
      [MEMORY[0x277CBEA60] arrayWithObjects:v157 count:3];
      v73 = v134 = v53;
      [v145 activateConstraints:v73];

      v74 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v21, v22, v23, v24}];
      [(EventKitTCCTableViewCell *)v18 setSubtitleLabel:v74];

      v75 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      [v75 setTranslatesAutoresizingMaskIntoConstraints:0];

      v76 = [MEMORY[0x277D74300] preferredFontForTextStyle:v134];
      v77 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      [v77 setFont:v76];

      v78 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      [v78 setAdjustsFontForContentSizeCategory:1];

      v79 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      [v79 setNumberOfLines:1];

      v80 = [MEMORY[0x277D75348] grayColor];
      v81 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      [v81 setTextColor:v80];

      v82 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      [v82 setText:v153];

      v83 = [(EventKitTCCTableViewCell *)v18 contentView];
      v84 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      [v83 addSubview:v84];

      v127 = MEMORY[0x277CCAAD0];
      v149 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      v143 = [v149 topAnchor];
      v146 = [(EventKitTCCTableViewCell *)v18 titleLabel];
      v139 = [v146 bottomAnchor];
      v135 = [v143 constraintEqualToAnchor:v139 constant:4.0];
      v156[0] = v135;
      v131 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      v123 = [v131 leadingAnchor];
      v85 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
      v86 = [v85 trailingAnchor];
      v87 = [v123 constraintEqualToAnchor:v86 constant:16.0];
      v156[1] = v87;
      v88 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      v89 = [v88 trailingAnchor];
      v90 = [(EventKitTCCTableViewCell *)v18 contentView];
      v91 = [v90 trailingAnchor];
      v92 = [v89 constraintEqualToAnchor:v91 constant:-16.0];
      v156[2] = v92;
      v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:3];
      [v127 activateConstraints:v93];

      v94 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      v95 = [v94 bottomAnchor];
      v96 = [(EventKitTCCTableViewCell *)v18 contentView];
      v97 = [v96 bottomAnchor];
      v62 = [v95 constraintEqualToAnchor:v97 constant:-8.0];

      LODWORD(v98) = 1144750080;
      [v62 setPriority:v98];
      v99 = MEMORY[0x277CCAAD0];
      v155 = v62;
      v100 = [MEMORY[0x277CBEA60] arrayWithObjects:&v155 count:1];
      [v99 activateConstraints:v100];
    }

    else
    {
      v140 = [MEMORY[0x277D74300] preferredFontForTextStyle:v53];
      [v140 pointSize];
      v136 = [v63 constraintEqualToAnchor:v64 constant:v101 * 0.5 + 2.0 + 8.0];
      v158[0] = v136;
      v132 = [(EventKitTCCTableViewCell *)v18 titleLabel];
      v124 = [v132 bottomAnchor];
      v128 = [(EventKitTCCTableViewCell *)v18 contentView];
      v117 = [v128 bottomAnchor];
      v120 = [MEMORY[0x277D74300] preferredFontForTextStyle:v53];
      [v120 pointSize];
      v116 = [v124 constraintEqualToAnchor:v117 constant:-(v102 * 0.5 + 2.0 + 8.0)];
      v158[1] = v116;
      v115 = [(EventKitTCCTableViewCell *)v18 titleLabel];
      v113 = [v115 leadingAnchor];
      v114 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
      v112 = [v114 trailingAnchor];
      v103 = [v113 constraintEqualToAnchor:v112 constant:16.0];
      v158[2] = v103;
      v104 = [(EventKitTCCTableViewCell *)v18 titleLabel];
      v105 = [v104 trailingAnchor];
      v106 = [(EventKitTCCTableViewCell *)v18 contentView];
      v107 = [v106 trailingAnchor];
      [v105 constraintEqualToAnchor:v107 constant:-16.0];
      v108 = v100 = v63;
      v158[3] = v108;
      v109 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:4];
      [v145 activateConstraints:v109];
    }

    v14 = v152;
    v15 = v153;
    v17 = v150;
    v16 = v151;
  }

  v110 = *MEMORY[0x277D85DE8];
  return v18;
}

@end