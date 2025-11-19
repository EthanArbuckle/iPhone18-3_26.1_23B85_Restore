@interface LNSystemProtocol
+ (LNSystemProtocol)assistantIntentProtocol;
+ (LNSystemProtocol)assistantInvocableIntentProtocol;
+ (LNSystemProtocol)audioRecordingProtocol;
+ (LNSystemProtocol)audioStartingProtocol;
+ (LNSystemProtocol)cameraCaptureProtocol;
+ (LNSystemProtocol)cancelProtocol;
+ (LNSystemProtocol)changeBinarySettingSystemProtocol;
+ (LNSystemProtocol)closeEntityProtocol;
+ (LNSystemProtocol)conditionallyEnabledProtocol;
+ (LNSystemProtocol)controlConfigurationProtocol;
+ (LNSystemProtocol)copyEntityProtocol;
+ (LNSystemProtocol)copySystemProtocol;
+ (LNSystemProtocol)createEntitySystemProtocol;
+ (LNSystemProtocol)cutEntityProtocol;
+ (LNSystemProtocol)cutSystemProtocol;
+ (LNSystemProtocol)deleteEntitySystemProtocol;
+ (LNSystemProtocol)duplicateEntitySystemProtocol;
+ (LNSystemProtocol)enterMarkupProtocol;
+ (LNSystemProtocol)entityUpdatingProtocol;
+ (LNSystemProtocol)exitMarkupProtocol;
+ (LNSystemProtocol)favoriteEntityProtocol;
+ (LNSystemProtocol)focusConfigurationProtocol;
+ (LNSystemProtocol)foregroundContinuableProtocol;
+ (LNSystemProtocol)moveSpatialProtocol;
+ (LNSystemProtocol)navigateSequentiallyProtocol;
+ (LNSystemProtocol)openEntitySystemProtocol;
+ (LNSystemProtocol)pasteSystemProtocol;
+ (LNSystemProtocol)pauseWorkoutProtocol;
+ (LNSystemProtocol)playVideoProtocol;
+ (LNSystemProtocol)previewEntityProtocol;
+ (LNSystemProtocol)progressReportingProtocol;
+ (LNSystemProtocol)propertyUpdaterProtocol;
+ (LNSystemProtocol)protocolWithIdentifier:(id)a3;
+ (LNSystemProtocol)pushToTalkTransmissionProtocol;
+ (LNSystemProtocol)putEntityInContainerProtocol;
+ (LNSystemProtocol)requiresMDMChecksProtocol;
+ (LNSystemProtocol)resizeProtocol;
+ (LNSystemProtocol)resumeWorkoutProtocol;
+ (LNSystemProtocol)saveEntitySystemProtocol;
+ (LNSystemProtocol)scrollProtocol;
+ (LNSystemProtocol)searchSystemProtocol;
+ (LNSystemProtocol)sendMailProtocol;
+ (LNSystemProtocol)sessionStartingProtocol;
+ (LNSystemProtocol)setMailMessageIsReadProtocol;
+ (LNSystemProtocol)setValueProtocol;
+ (LNSystemProtocol)showInAppSearchResultsProtocol;
+ (LNSystemProtocol)showInAppStringSearchResultsProtocol;
+ (LNSystemProtocol)showSearchResultsInAppProtocol;
+ (LNSystemProtocol)showStringSearchResultsInAppProtocol;
+ (LNSystemProtocol)snippetProtocol;
+ (LNSystemProtocol)staccatoLongPressProtocol;
+ (LNSystemProtocol)startDiveProtocol;
+ (LNSystemProtocol)startWorkoutProtocol;
+ (LNSystemProtocol)stingProtocol;
+ (LNSystemProtocol)systemFrameworkProtocol;
+ (LNSystemProtocol)toggleProtocol;
+ (LNSystemProtocol)undoSystemProtocol;
+ (LNSystemProtocol)undoableProtocol;
+ (LNSystemProtocol)urlRepresentableProtocol;
+ (LNSystemProtocol)widgetConfigurationProtocol;
+ (LNSystemProtocol)xpcListenerProtocol;
+ (LNSystemProtocol)zoomProtocol;
+ (NSArray)allProtocols;
+ (id)allProtocolsByIdentifier;
+ (id)ofKind:(int64_t)a3;
+ (id)parametersForProtocolWithIdentifier:(id)a3;
+ (id)protocolOrNilWithIdentifier:(id)a3;
+ (id)sendMessageProtocol;
+ (id)systemProtocolKindsByIdentifier;
- (BOOL)isEqual:(id)a3;
- (LNSystemProtocol)initWithCoder:(id)a3;
- (LNSystemProtocol)initWithIdentifier:(id)a3 parameters:(id)a4;
- (NSString)typeName;
- (id)description;
- (int64_t)kind;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSystemProtocol

+ (LNSystemProtocol)focusConfigurationProtocol
{
  if (focusConfigurationProtocol_onceToken[0] != -1)
  {
    dispatch_once(focusConfigurationProtocol_onceToken, &__block_literal_global_215);
  }

  v3 = focusConfigurationProtocol_value;

  return v3;
}

void __46__LNSystemProtocol_focusConfigurationProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.FocusConfiguration"];
  v1 = focusConfigurationProtocol_value;
  focusConfigurationProtocol_value = v0;
}

void __44__LNSystemProtocol_allProtocolsByIdentifier__block_invoke(uint64_t a1)
{
  v250[61] = *MEMORY[0x1E69E9840];
  v249[0] = @"com.apple.link.systemProtocol.AudioRecording";
  v2 = [LNSystemProtocol alloc];
  v3 = *(a1 + 32);
  v248 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.AudioRecording"];
  v247 = [(LNSystemProtocol *)v2 initWithIdentifier:@"com.apple.link.systemProtocol.AudioRecording" parameters:v248];
  v250[0] = v247;
  v249[1] = @"com.apple.link.systemProtocol.AudioStarting";
  v4 = [LNSystemProtocol alloc];
  v5 = *(a1 + 32);
  v246 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.AudioStarting"];
  v245 = [(LNSystemProtocol *)v4 initWithIdentifier:@"com.apple.link.systemProtocol.AudioStarting" parameters:v246];
  v250[1] = v245;
  v249[2] = @"com.apple.link.systemProtocol.Cancel";
  v6 = [LNSystemProtocol alloc];
  v7 = *(a1 + 32);
  v244 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Cancel"];
  v243 = [(LNSystemProtocol *)v6 initWithIdentifier:@"com.apple.link.systemProtocol.Cancel" parameters:v244];
  v250[2] = v243;
  v249[3] = @"com.apple.link.systemProtocol.ChangeBinarySetting";
  v8 = [LNSystemProtocol alloc];
  v9 = *(a1 + 32);
  v242 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ChangeBinarySetting"];
  v241 = [(LNSystemProtocol *)v8 initWithIdentifier:@"com.apple.link.systemProtocol.ChangeBinarySetting" parameters:v242];
  v250[3] = v241;
  v249[4] = @"com.apple.link.systemProtocol.CloseEntity";
  v10 = [LNSystemProtocol alloc];
  v11 = *(a1 + 32);
  v240 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.CloseEntity"];
  v239 = [(LNSystemProtocol *)v10 initWithIdentifier:@"com.apple.link.systemProtocol.CloseEntity" parameters:v240];
  v250[4] = v239;
  v249[5] = @"com.apple.link.systemProtocol.ConditionallyEnabled";
  v12 = [LNSystemProtocol alloc];
  v13 = *(a1 + 32);
  v238 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ConditionallyEnabled"];
  v237 = [(LNSystemProtocol *)v12 initWithIdentifier:@"com.apple.link.systemProtocol.ConditionallyEnabled" parameters:v238];
  v250[5] = v237;
  v249[6] = @"com.apple.link.systemProtocol.ControlConfiguration";
  v14 = [LNSystemProtocol alloc];
  v15 = *(a1 + 32);
  v236 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ControlConfiguration"];
  v235 = [(LNSystemProtocol *)v14 initWithIdentifier:@"com.apple.link.systemProtocol.ControlConfiguration" parameters:v236];
  v250[6] = v235;
  v249[7] = @"com.apple.link.systemProtocol.Copy";
  v16 = [LNSystemProtocol alloc];
  v17 = *(a1 + 32);
  v234 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Copy"];
  v233 = [(LNSystemProtocol *)v16 initWithIdentifier:@"com.apple.link.systemProtocol.Copy" parameters:v234];
  v250[7] = v233;
  v249[8] = @"com.apple.link.systemProtocol.CopyEntity";
  v18 = [LNSystemProtocol alloc];
  v19 = *(a1 + 32);
  v232 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.CopyEntity"];
  v231 = [(LNSystemProtocol *)v18 initWithIdentifier:@"com.apple.link.systemProtocol.CopyEntity" parameters:v232];
  v250[8] = v231;
  v249[9] = @"com.apple.link.systemProtocol.CreateEntity";
  v20 = [LNSystemProtocol alloc];
  v21 = *(a1 + 32);
  v230 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.CreateEntity"];
  v229 = [(LNSystemProtocol *)v20 initWithIdentifier:@"com.apple.link.systemProtocol.CreateEntity" parameters:v230];
  v250[9] = v229;
  v249[10] = @"com.apple.link.systemProtocol.Cut";
  v22 = [LNSystemProtocol alloc];
  v23 = *(a1 + 32);
  v228 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Cut"];
  v227 = [(LNSystemProtocol *)v22 initWithIdentifier:@"com.apple.link.systemProtocol.Cut" parameters:v228];
  v250[10] = v227;
  v249[11] = @"com.apple.link.systemProtocol.CutEntity";
  v24 = [LNSystemProtocol alloc];
  v25 = *(a1 + 32);
  v226 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.CutEntity"];
  v225 = [(LNSystemProtocol *)v24 initWithIdentifier:@"com.apple.link.systemProtocol.CutEntity" parameters:v226];
  v250[11] = v225;
  v249[12] = @"com.apple.link.systemProtocol.DeleteEntity";
  v26 = [LNSystemProtocol alloc];
  v27 = *(a1 + 32);
  v224 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.DeleteEntity"];
  v223 = [(LNSystemProtocol *)v26 initWithIdentifier:@"com.apple.link.systemProtocol.DeleteEntity" parameters:v224];
  v250[12] = v223;
  v249[13] = @"com.apple.link.systemProtocol.DuplicateEntity";
  v28 = [LNSystemProtocol alloc];
  v29 = *(a1 + 32);
  v222 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.DuplicateEntity"];
  v221 = [(LNSystemProtocol *)v28 initWithIdentifier:@"com.apple.link.systemProtocol.DuplicateEntity" parameters:v222];
  v250[13] = v221;
  v249[14] = @"com.apple.link.systemProtocol.EnterMarkup";
  v30 = [LNSystemProtocol alloc];
  v31 = *(a1 + 32);
  v220 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.EnterMarkup"];
  v219 = [(LNSystemProtocol *)v30 initWithIdentifier:@"com.apple.link.systemProtocol.EnterMarkup" parameters:v220];
  v250[14] = v219;
  v249[15] = @"com.apple.link.systemProtocol.EntityUpdating";
  v32 = [LNSystemProtocol alloc];
  v33 = *(a1 + 32);
  v218 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.EntityUpdating"];
  v217 = [(LNSystemProtocol *)v32 initWithIdentifier:@"com.apple.link.systemProtocol.EntityUpdating" parameters:v218];
  v250[15] = v217;
  v249[16] = @"com.apple.link.systemProtocol.ExitMarkup";
  v34 = [LNSystemProtocol alloc];
  v35 = *(a1 + 32);
  v216 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ExitMarkup"];
  v215 = [(LNSystemProtocol *)v34 initWithIdentifier:@"com.apple.link.systemProtocol.ExitMarkup" parameters:v216];
  v250[16] = v215;
  v249[17] = @"com.apple.link.systemProtocol.FavoriteEntity";
  v36 = [LNSystemProtocol alloc];
  v37 = *(a1 + 32);
  v214 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.FavoriteEntity"];
  v213 = [(LNSystemProtocol *)v36 initWithIdentifier:@"com.apple.link.systemProtocol.FavoriteEntity" parameters:v214];
  v250[17] = v213;
  v249[18] = @"com.apple.link.systemProtocol.FocusConfiguration";
  v38 = [LNSystemProtocol alloc];
  v39 = *(a1 + 32);
  v212 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.FocusConfiguration"];
  v211 = [(LNSystemProtocol *)v38 initWithIdentifier:@"com.apple.link.systemProtocol.FocusConfiguration" parameters:v212];
  v250[18] = v211;
  v249[19] = @"com.apple.link.systemProtocol.ForegroundContinuable";
  v40 = [LNSystemProtocol alloc];
  v41 = *(a1 + 32);
  v210 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ForegroundContinuable"];
  v209 = [(LNSystemProtocol *)v40 initWithIdentifier:@"com.apple.link.systemProtocol.ForegroundContinuable" parameters:v210];
  v250[19] = v209;
  v249[20] = @"com.apple.link.systemProtocol.MoveSpatial";
  v42 = [LNSystemProtocol alloc];
  v43 = *(a1 + 32);
  v208 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.MoveSpatial"];
  v207 = [(LNSystemProtocol *)v42 initWithIdentifier:@"com.apple.link.systemProtocol.MoveSpatial" parameters:v208];
  v250[20] = v207;
  v249[21] = @"com.apple.link.systemProtocol.NavigateSequentially";
  v44 = [LNSystemProtocol alloc];
  v45 = *(a1 + 32);
  v206 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.NavigateSequentially"];
  v205 = [(LNSystemProtocol *)v44 initWithIdentifier:@"com.apple.link.systemProtocol.NavigateSequentially" parameters:v206];
  v250[21] = v205;
  v249[22] = @"com.apple.link.systemProtocol.OpenEntity";
  v46 = [LNSystemProtocol alloc];
  v47 = *(a1 + 32);
  v204 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.OpenEntity"];
  v203 = [(LNSystemProtocol *)v46 initWithIdentifier:@"com.apple.link.systemProtocol.OpenEntity" parameters:v204];
  v250[22] = v203;
  v249[23] = @"com.apple.link.systemProtocol.Paste";
  v48 = [LNSystemProtocol alloc];
  v49 = *(a1 + 32);
  v202 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Paste"];
  v201 = [(LNSystemProtocol *)v48 initWithIdentifier:@"com.apple.link.systemProtocol.Paste" parameters:v202];
  v250[23] = v201;
  v249[24] = @"com.apple.link.systemProtocol.PauseWorkout";
  v50 = [LNSystemProtocol alloc];
  v51 = *(a1 + 32);
  v200 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.PauseWorkout"];
  v199 = [(LNSystemProtocol *)v50 initWithIdentifier:@"com.apple.link.systemProtocol.PauseWorkout" parameters:v200];
  v250[24] = v199;
  v249[25] = @"com.apple.link.systemProtocol.ProgressReporting";
  v52 = [LNSystemProtocol alloc];
  v53 = *(a1 + 32);
  v198 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ProgressReporting"];
  v197 = [(LNSystemProtocol *)v52 initWithIdentifier:@"com.apple.link.systemProtocol.ProgressReporting" parameters:v198];
  v250[25] = v197;
  v249[26] = @"com.apple.link.systemProtocol.PreviewEntity";
  v54 = [LNSystemProtocol alloc];
  v55 = *(a1 + 32);
  v196 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.PreviewEntity"];
  v195 = [(LNSystemProtocol *)v54 initWithIdentifier:@"com.apple.link.systemProtocol.PreviewEntity" parameters:v196];
  v250[26] = v195;
  v249[27] = @"com.apple.link.systemProtocol.PropertyUpdater";
  v56 = [LNSystemProtocol alloc];
  v57 = *(a1 + 32);
  v194 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.PropertyUpdater"];
  v193 = [(LNSystemProtocol *)v56 initWithIdentifier:@"com.apple.link.systemProtocol.PropertyUpdater" parameters:v194];
  v250[27] = v193;
  v249[28] = @"com.apple.link.systemProtocol.PushToTalkTransmission";
  v58 = [LNSystemProtocol alloc];
  v59 = *(a1 + 32);
  v192 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.PushToTalkTransmission"];
  v191 = [(LNSystemProtocol *)v58 initWithIdentifier:@"com.apple.link.systemProtocol.PushToTalkTransmission" parameters:v192];
  v250[28] = v191;
  v249[29] = @"com.apple.link.systemProtocol.PutEntityInContainer";
  v60 = [LNSystemProtocol alloc];
  v61 = *(a1 + 32);
  v190 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.PutEntityInContainer"];
  v189 = [(LNSystemProtocol *)v60 initWithIdentifier:@"com.apple.link.systemProtocol.PutEntityInContainer" parameters:v190];
  v250[29] = v189;
  v249[30] = @"com.apple.link.systemProtocol.RequiresMDMChecks";
  v62 = [LNSystemProtocol alloc];
  v63 = *(a1 + 32);
  v188 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.RequiresMDMChecks"];
  v187 = [(LNSystemProtocol *)v62 initWithIdentifier:@"com.apple.link.systemProtocol.RequiresMDMChecks" parameters:v188];
  v250[30] = v187;
  v249[31] = @"com.apple.link.systemProtocol.Resize";
  v64 = [LNSystemProtocol alloc];
  v65 = *(a1 + 32);
  v186 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Resize"];
  v185 = [(LNSystemProtocol *)v64 initWithIdentifier:@"com.apple.link.systemProtocol.Resize" parameters:v186];
  v250[31] = v185;
  v249[32] = @"com.apple.link.systemProtocol.ResumeWorkout";
  v66 = [LNSystemProtocol alloc];
  v67 = *(a1 + 32);
  v184 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ResumeWorkout"];
  v183 = [(LNSystemProtocol *)v66 initWithIdentifier:@"com.apple.link.systemProtocol.ResumeWorkout" parameters:v184];
  v250[32] = v183;
  v249[33] = @"com.apple.link.systemProtocol.SaveEntity";
  v68 = [LNSystemProtocol alloc];
  v69 = *(a1 + 32);
  v182 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.SaveEntity"];
  v181 = [(LNSystemProtocol *)v68 initWithIdentifier:@"com.apple.link.systemProtocol.SaveEntity" parameters:v182];
  v250[33] = v181;
  v249[34] = @"com.apple.link.systemProtocol.Scroll";
  v70 = [LNSystemProtocol alloc];
  v71 = *(a1 + 32);
  v180 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Scroll"];
  v179 = [(LNSystemProtocol *)v70 initWithIdentifier:@"com.apple.link.systemProtocol.Scroll" parameters:v180];
  v250[34] = v179;
  v249[35] = @"com.apple.link.systemProtocol.Search";
  v72 = [LNSystemProtocol alloc];
  v73 = *(a1 + 32);
  v178 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Search"];
  v177 = [(LNSystemProtocol *)v72 initWithIdentifier:@"com.apple.link.systemProtocol.Search" parameters:v178];
  v250[35] = v177;
  v249[36] = @"com.apple.link.systemProtocol.SessionStarting";
  v74 = [LNSystemProtocol alloc];
  v75 = *(a1 + 32);
  v176 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.SessionStarting"];
  v175 = [(LNSystemProtocol *)v74 initWithIdentifier:@"com.apple.link.systemProtocol.SessionStarting" parameters:v176];
  v250[36] = v175;
  v249[37] = @"com.apple.link.systemProtocol.SetValue";
  v76 = [LNSystemProtocol alloc];
  v77 = *(a1 + 32);
  v174 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.SetValue"];
  v173 = [(LNSystemProtocol *)v76 initWithIdentifier:@"com.apple.link.systemProtocol.SetValue" parameters:v174];
  v250[37] = v173;
  v249[38] = @"com.apple.link.systemProtocol.Snippet";
  v78 = [LNSystemProtocol alloc];
  v79 = *(a1 + 32);
  v172 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Snippet"];
  v171 = [(LNSystemProtocol *)v78 initWithIdentifier:@"com.apple.link.systemProtocol.Snippet" parameters:v172];
  v250[38] = v171;
  v249[39] = @"com.apple.link.systemProtocol.StartDive";
  v80 = [LNSystemProtocol alloc];
  v81 = *(a1 + 32);
  v170 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.StartDive"];
  v169 = [(LNSystemProtocol *)v80 initWithIdentifier:@"com.apple.link.systemProtocol.StartDive" parameters:v170];
  v250[39] = v169;
  v249[40] = @"com.apple.link.systemProtocol.StartWorkout";
  v82 = [LNSystemProtocol alloc];
  v83 = *(a1 + 32);
  v168 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.StartWorkout"];
  v167 = [(LNSystemProtocol *)v82 initWithIdentifier:@"com.apple.link.systemProtocol.StartWorkout" parameters:v168];
  v250[40] = v167;
  v249[41] = @"com.apple.link.systemProtocol.Sting";
  v84 = [LNSystemProtocol alloc];
  v85 = *(a1 + 32);
  v166 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Sting"];
  v165 = [(LNSystemProtocol *)v84 initWithIdentifier:@"com.apple.link.systemProtocol.Sting" parameters:v166];
  v250[41] = v165;
  v249[42] = @"com.apple.link.systemProtocol.SystemFramework";
  v86 = [LNSystemProtocol alloc];
  v87 = *(a1 + 32);
  v164 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.SystemFramework"];
  v163 = [(LNSystemProtocol *)v86 initWithIdentifier:@"com.apple.link.systemProtocol.SystemFramework" parameters:v164];
  v250[42] = v163;
  v249[43] = @"com.apple.link.systemProtocol.Toggle";
  v88 = [LNSystemProtocol alloc];
  v89 = *(a1 + 32);
  v162 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Toggle"];
  v161 = [(LNSystemProtocol *)v88 initWithIdentifier:@"com.apple.link.systemProtocol.Toggle" parameters:v162];
  v250[43] = v161;
  v249[44] = @"com.apple.link.systemProtocol.Undo";
  v90 = [LNSystemProtocol alloc];
  v91 = *(a1 + 32);
  v160 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Undo"];
  v159 = [(LNSystemProtocol *)v90 initWithIdentifier:@"com.apple.link.systemProtocol.Undo" parameters:v160];
  v250[44] = v159;
  v249[45] = @"com.apple.link.systemProtocol.Undoable";
  v92 = [LNSystemProtocol alloc];
  v93 = *(a1 + 32);
  v158 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Undoable"];
  v157 = [(LNSystemProtocol *)v92 initWithIdentifier:@"com.apple.link.systemProtocol.Undoable" parameters:v158];
  v250[45] = v157;
  v249[46] = @"com.apple.link.systemProtocol.URLRepresentable";
  v94 = [LNSystemProtocol alloc];
  v95 = *(a1 + 32);
  v156 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.URLRepresentable"];
  v155 = [(LNSystemProtocol *)v94 initWithIdentifier:@"com.apple.link.systemProtocol.URLRepresentable" parameters:v156];
  v250[46] = v155;
  v249[47] = @"com.apple.link.systemProtocol.WidgetConfiguration";
  v96 = [LNSystemProtocol alloc];
  v97 = *(a1 + 32);
  v154 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.WidgetConfiguration"];
  v153 = [(LNSystemProtocol *)v96 initWithIdentifier:@"com.apple.link.systemProtocol.WidgetConfiguration" parameters:v154];
  v250[47] = v153;
  v249[48] = @"com.apple.link.systemProtocol.XPCListener";
  v98 = [LNSystemProtocol alloc];
  v99 = *(a1 + 32);
  v152 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.XPCListener"];
  v151 = [(LNSystemProtocol *)v98 initWithIdentifier:@"com.apple.link.systemProtocol.XPCListener" parameters:v152];
  v250[48] = v151;
  v249[49] = @"com.apple.link.systemProtocol.Zoom";
  v100 = [LNSystemProtocol alloc];
  v101 = *(a1 + 32);
  v150 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Zoom"];
  v149 = [(LNSystemProtocol *)v100 initWithIdentifier:@"com.apple.link.systemProtocol.Zoom" parameters:v150];
  v250[49] = v149;
  v249[50] = @"com.apple.link.systemProtocol.AssistantIntent";
  v102 = [LNSystemProtocol alloc];
  v103 = *(a1 + 32);
  v148 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.AssistantIntent"];
  v147 = [(LNSystemProtocol *)v102 initWithIdentifier:@"com.apple.link.systemProtocol.AssistantIntent" parameters:v148];
  v250[50] = v147;
  v249[51] = @"com.apple.link.systemProtocol.AssistantInvocableIntent";
  v104 = [LNSystemProtocol alloc];
  v105 = *(a1 + 32);
  v146 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.AssistantInvocableIntent"];
  v145 = [(LNSystemProtocol *)v104 initWithIdentifier:@"com.apple.link.systemProtocol.AssistantInvocableIntent" parameters:v146];
  v250[51] = v145;
  v249[52] = @"com.apple.link.systemProtocol.SendMail";
  v106 = [LNSystemProtocol alloc];
  v107 = *(a1 + 32);
  v144 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.SendMail"];
  v143 = [(LNSystemProtocol *)v106 initWithIdentifier:@"com.apple.link.systemProtocol.SendMail" parameters:v144];
  v250[52] = v143;
  v249[53] = @"com.apple.link.systemProtocol.SetMailMessageIsRead";
  v108 = [LNSystemProtocol alloc];
  v109 = *(a1 + 32);
  v142 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.SetMailMessageIsRead"];
  v141 = [(LNSystemProtocol *)v108 initWithIdentifier:@"com.apple.link.systemProtocol.SetMailMessageIsRead" parameters:v142];
  v250[53] = v141;
  v249[54] = @"com.apple.link.systemProtocol.SendMessage";
  v110 = [LNSystemProtocol alloc];
  v111 = *(a1 + 32);
  v140 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.SendMessage"];
  v139 = [(LNSystemProtocol *)v110 initWithIdentifier:@"com.apple.link.systemProtocol.SendMessage" parameters:v140];
  v250[54] = v139;
  v249[55] = @"com.apple.link.systemProtocol.PlayVideo";
  v112 = [LNSystemProtocol alloc];
  v113 = *(a1 + 32);
  v138 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.PlayVideo"];
  v137 = [(LNSystemProtocol *)v112 initWithIdentifier:@"com.apple.link.systemProtocol.PlayVideo" parameters:v138];
  v250[55] = v137;
  v249[56] = @"com.apple.link.systemProtocol.ShowSearchResultsInApp";
  v114 = [LNSystemProtocol alloc];
  v115 = *(a1 + 32);
  v136 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ShowSearchResultsInApp"];
  v116 = [(LNSystemProtocol *)v114 initWithIdentifier:@"com.apple.link.systemProtocol.ShowSearchResultsInApp" parameters:v136];
  v250[56] = v116;
  v249[57] = @"com.apple.link.systemProtocol.ShowInAppSearchResults";
  v117 = [LNSystemProtocol alloc];
  v118 = *(a1 + 32);
  v119 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ShowInAppSearchResults"];
  v120 = [(LNSystemProtocol *)v117 initWithIdentifier:@"com.apple.link.systemProtocol.ShowInAppSearchResults" parameters:v119];
  v250[57] = v120;
  v249[58] = @"com.apple.link.systemProtocol.ShowInAppStringSearchResults";
  v121 = [LNSystemProtocol alloc];
  v122 = *(a1 + 32);
  v123 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ShowInAppStringSearchResults"];
  v124 = [(LNSystemProtocol *)v121 initWithIdentifier:@"com.apple.link.systemProtocol.ShowInAppStringSearchResults" parameters:v123];
  v250[58] = v124;
  v249[59] = @"com.apple.link.systemProtocol.CameraCapture";
  v125 = [LNSystemProtocol alloc];
  v126 = *(a1 + 32);
  v127 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.CameraCapture"];
  v128 = [(LNSystemProtocol *)v125 initWithIdentifier:@"com.apple.link.systemProtocol.CameraCapture" parameters:v127];
  v250[59] = v128;
  v249[60] = @"com.apple.link.systemProtocol.StaccatoLongPress";
  v129 = [LNSystemProtocol alloc];
  v130 = *(a1 + 32);
  v131 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.StaccatoLongPress"];
  v132 = [(LNSystemProtocol *)v129 initWithIdentifier:@"com.apple.link.systemProtocol.StaccatoLongPress" parameters:v131];
  v250[60] = v132;
  v133 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v250 forKeys:v249 count:61];
  v134 = allProtocolsByIdentifier_protocolsByIdentifier_8952;
  allProtocolsByIdentifier_protocolsByIdentifier_8952 = v133;

  v135 = *MEMORY[0x1E69E9840];
}

+ (LNSystemProtocol)foregroundContinuableProtocol
{
  if (foregroundContinuableProtocol_onceToken[0] != -1)
  {
    dispatch_once(foregroundContinuableProtocol_onceToken, &__block_literal_global_217);
  }

  v3 = foregroundContinuableProtocol_value;

  return v3;
}

+ (id)allProtocolsByIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__LNSystemProtocol_allProtocolsByIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (allProtocolsByIdentifier_onceToken_8951 != -1)
  {
    dispatch_once(&allProtocolsByIdentifier_onceToken_8951, block);
  }

  v2 = allProtocolsByIdentifier_protocolsByIdentifier_8952;

  return v2;
}

void __49__LNSystemProtocol_foregroundContinuableProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ForegroundContinuable"];
  v1 = foregroundContinuableProtocol_value;
  foregroundContinuableProtocol_value = v0;
}

void __44__LNSystemProtocol_openEntitySystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.OpenEntity"];
  v1 = openEntitySystemProtocol_value;
  openEntitySystemProtocol_value = v0;
}

+ (LNSystemProtocol)openEntitySystemProtocol
{
  if (openEntitySystemProtocol_onceToken[0] != -1)
  {
    dispatch_once(openEntitySystemProtocol_onceToken, &__block_literal_global_223);
  }

  v3 = openEntitySystemProtocol_value;

  return v3;
}

+ (LNSystemProtocol)audioRecordingProtocol
{
  if (audioRecordingProtocol_onceToken[0] != -1)
  {
    dispatch_once(audioRecordingProtocol_onceToken, &__block_literal_global_183);
  }

  v3 = audioRecordingProtocol_value;

  return v3;
}

+ (LNSystemProtocol)audioStartingProtocol
{
  if (audioStartingProtocol_onceToken[0] != -1)
  {
    dispatch_once(audioStartingProtocol_onceToken, &__block_literal_global_8955);
  }

  v3 = audioStartingProtocol_value;

  return v3;
}

+ (LNSystemProtocol)cameraCaptureProtocol
{
  if (cameraCaptureProtocol_onceToken != -1)
  {
    dispatch_once(&cameraCaptureProtocol_onceToken, &__block_literal_global_301);
  }

  v3 = cameraCaptureProtocol_value;

  return v3;
}

+ (LNSystemProtocol)urlRepresentableProtocol
{
  if (urlRepresentableProtocol_onceToken_8953[0] != -1)
  {
    dispatch_once(urlRepresentableProtocol_onceToken_8953, &__block_literal_global_279);
  }

  v3 = urlRepresentableProtocol_value_8954;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNSystemProtocol *)self identifier];
      v8 = [(LNSystemProtocol *)v6 identifier];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(LNSystemProtocol *)self parameters];
        v10 = [(LNSystemProtocol *)v6 parameters];
        v11 = v9;
        v12 = v10;
        v13 = v12;
        if (v11 == v12)
        {
          v14 = 1;
        }

        else
        {
          v14 = 0;
          if (v11 && v12)
          {
            v14 = [v11 isEqualToDictionary:v12];
          }
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(LNSystemProtocol *)self identifier];
  v4 = [v3 hash];
  v5 = [(LNSystemProtocol *)self parameters];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNSystemProtocol *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNSystemProtocol *)self parameters];
  [v4 encodeObject:v6 forKey:@"parameters"];
}

- (LNSystemProtocol)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"parameters"];

  if (v9)
  {
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    if (v10)
    {
      self = [(LNSystemProtocol *)self initWithIdentifier:v10 parameters:v9];
      v11 = self;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNSystemProtocol *)self typeName];
  v7 = [v3 stringWithFormat:@"<%@: %p, typeName: %@>", v5, self, v6];

  return v7;
}

- (NSString)typeName
{
  v2 = [(LNSystemProtocol *)self identifier];
  v3 = [v2 componentsSeparatedByString:@"."];
  v4 = [v3 lastObject];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Action", v4];

  return v5;
}

- (LNSystemProtocol)initWithIdentifier:(id)a3 parameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"LNSystemProtocol.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"LNSystemProtocol.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNSystemProtocol;
  v10 = [(LNSystemProtocol *)&v19 init];
  if (v10)
  {
    v11 = [v7 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v9 copy];
    parameters = v10->_parameters;
    v10->_parameters = v13;

    v15 = v10;
  }

  return v10;
}

+ (id)protocolOrNilWithIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"LNSystemProtocol.m" lineNumber:484 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v6 = [a1 allProtocolsByIdentifier];
  v7 = [v6 valueForKey:v5];

  if (!v7)
  {
    v8 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&dword_18EF7E000, v8, OS_LOG_TYPE_ERROR, "%{public}@ is not a valid LN_TYPE(SystemProtocolIdentifier)", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)parametersForProtocolWithIdentifier:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"com.apple.link.systemProtocol.ChangeBinarySetting"])
  {
    v8 = @"setting";
    if (parametersForProtocolWithIdentifier__onceToken != -1)
    {
      dispatch_once(&parametersForProtocolWithIdentifier__onceToken, &__block_literal_global_322);
    }

    v9[0] = parametersForProtocolWithIdentifier__value;
    v3 = MEMORY[0x1E695DF20];
    v4 = parametersForProtocolWithIdentifier__value;
    v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t __56__LNSystemProtocol_parametersForProtocolWithIdentifier___block_invoke()
{
  parametersForProtocolWithIdentifier__value = [[LNSystemProtocolParameter alloc] initWithVocabularyModel:2];

  return MEMORY[0x1EEE66BB8]();
}

+ (NSArray)allProtocols
{
  v2 = [a1 allProtocolsByIdentifier];
  v3 = [v2 allValues];

  return v3;
}

+ (LNSystemProtocol)staccatoLongPressProtocol
{
  if (staccatoLongPressProtocol_onceToken != -1)
  {
    dispatch_once(&staccatoLongPressProtocol_onceToken, &__block_literal_global_303);
  }

  v3 = staccatoLongPressProtocol_value;

  return v3;
}

void __45__LNSystemProtocol_staccatoLongPressProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.CameraCapture"];
  v1 = staccatoLongPressProtocol_value;
  staccatoLongPressProtocol_value = v0;
}

void __41__LNSystemProtocol_cameraCaptureProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.CameraCapture"];
  v1 = cameraCaptureProtocol_value;
  cameraCaptureProtocol_value = v0;
}

+ (LNSystemProtocol)showInAppStringSearchResultsProtocol
{
  if (showInAppStringSearchResultsProtocol_onceToken != -1)
  {
    dispatch_once(&showInAppStringSearchResultsProtocol_onceToken, &__block_literal_global_299);
  }

  v3 = showInAppStringSearchResultsProtocol_value;

  return v3;
}

void __56__LNSystemProtocol_showInAppStringSearchResultsProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ShowInAppStringSearchResults"];
  v1 = showInAppStringSearchResultsProtocol_value;
  showInAppStringSearchResultsProtocol_value = v0;
}

+ (LNSystemProtocol)showInAppSearchResultsProtocol
{
  if (showInAppSearchResultsProtocol_onceToken != -1)
  {
    dispatch_once(&showInAppSearchResultsProtocol_onceToken, &__block_literal_global_297);
  }

  v3 = showInAppSearchResultsProtocol_value;

  return v3;
}

void __50__LNSystemProtocol_showInAppSearchResultsProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ShowInAppSearchResults"];
  v1 = showInAppSearchResultsProtocol_value;
  showInAppSearchResultsProtocol_value = v0;
}

+ (LNSystemProtocol)showStringSearchResultsInAppProtocol
{
  if (showStringSearchResultsInAppProtocol_onceToken != -1)
  {
    dispatch_once(&showStringSearchResultsInAppProtocol_onceToken, &__block_literal_global_295);
  }

  v3 = showStringSearchResultsInAppProtocol_value;

  return v3;
}

void __56__LNSystemProtocol_showStringSearchResultsInAppProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ShowSearchResultsInApp"];
  v1 = showStringSearchResultsInAppProtocol_value;
  showStringSearchResultsInAppProtocol_value = v0;
}

+ (LNSystemProtocol)showSearchResultsInAppProtocol
{
  if (showSearchResultsInAppProtocol_onceToken != -1)
  {
    dispatch_once(&showSearchResultsInAppProtocol_onceToken, &__block_literal_global_293);
  }

  v3 = showSearchResultsInAppProtocol_value;

  return v3;
}

void __50__LNSystemProtocol_showSearchResultsInAppProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ShowSearchResultsInApp"];
  v1 = showSearchResultsInAppProtocol_value;
  showSearchResultsInAppProtocol_value = v0;
}

+ (LNSystemProtocol)playVideoProtocol
{
  if (playVideoProtocol_onceToken != -1)
  {
    dispatch_once(&playVideoProtocol_onceToken, &__block_literal_global_291);
  }

  v3 = playVideoProtocol_value;

  return v3;
}

void __37__LNSystemProtocol_playVideoProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.PlayVideo"];
  v1 = playVideoProtocol_value;
  playVideoProtocol_value = v0;
}

+ (id)sendMessageProtocol
{
  if (sendMessageProtocol_onceToken != -1)
  {
    dispatch_once(&sendMessageProtocol_onceToken, &__block_literal_global_289);
  }

  v3 = sendMessageProtocol_value;

  return v3;
}

void __39__LNSystemProtocol_sendMessageProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.SendMessage"];
  v1 = sendMessageProtocol_value;
  sendMessageProtocol_value = v0;
}

+ (LNSystemProtocol)setMailMessageIsReadProtocol
{
  if (setMailMessageIsReadProtocol_onceToken != -1)
  {
    dispatch_once(&setMailMessageIsReadProtocol_onceToken, &__block_literal_global_287);
  }

  v3 = setMailMessageIsReadProtocol_value;

  return v3;
}

void __48__LNSystemProtocol_setMailMessageIsReadProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.SetMailMessageIsRead"];
  v1 = setMailMessageIsReadProtocol_value;
  setMailMessageIsReadProtocol_value = v0;
}

+ (LNSystemProtocol)sendMailProtocol
{
  if (sendMailProtocol_onceToken != -1)
  {
    dispatch_once(&sendMailProtocol_onceToken, &__block_literal_global_285);
  }

  v3 = sendMailProtocol_value;

  return v3;
}

void __36__LNSystemProtocol_sendMailProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.SendMail"];
  v1 = sendMailProtocol_value;
  sendMailProtocol_value = v0;
}

+ (LNSystemProtocol)assistantInvocableIntentProtocol
{
  if (assistantInvocableIntentProtocol_onceToken != -1)
  {
    dispatch_once(&assistantInvocableIntentProtocol_onceToken, &__block_literal_global_283);
  }

  v3 = assistantInvocableIntentProtocol_value;

  return v3;
}

void __52__LNSystemProtocol_assistantInvocableIntentProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.AssistantInvocableIntent"];
  v1 = assistantInvocableIntentProtocol_value;
  assistantInvocableIntentProtocol_value = v0;
}

+ (LNSystemProtocol)assistantIntentProtocol
{
  if (assistantIntentProtocol_onceToken != -1)
  {
    dispatch_once(&assistantIntentProtocol_onceToken, &__block_literal_global_281);
  }

  v3 = assistantIntentProtocol_value;

  return v3;
}

void __43__LNSystemProtocol_assistantIntentProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.AssistantIntent"];
  v1 = assistantIntentProtocol_value;
  assistantIntentProtocol_value = v0;
}

void __44__LNSystemProtocol_urlRepresentableProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.URLRepresentable"];
  v1 = urlRepresentableProtocol_value_8954;
  urlRepresentableProtocol_value_8954 = v0;
}

+ (LNSystemProtocol)pushToTalkTransmissionProtocol
{
  if (pushToTalkTransmissionProtocol_onceToken[0] != -1)
  {
    dispatch_once(pushToTalkTransmissionProtocol_onceToken, &__block_literal_global_277);
  }

  v3 = pushToTalkTransmissionProtocol_value;

  return v3;
}

void __50__LNSystemProtocol_pushToTalkTransmissionProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.PushToTalkTransmission"];
  v1 = pushToTalkTransmissionProtocol_value;
  pushToTalkTransmissionProtocol_value = v0;
}

+ (LNSystemProtocol)zoomProtocol
{
  if (zoomProtocol_onceToken != -1)
  {
    dispatch_once(&zoomProtocol_onceToken, &__block_literal_global_275);
  }

  v3 = zoomProtocol_value;

  return v3;
}

void __32__LNSystemProtocol_zoomProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Zoom"];
  v1 = zoomProtocol_value;
  zoomProtocol_value = v0;
}

+ (LNSystemProtocol)xpcListenerProtocol
{
  if (xpcListenerProtocol_onceToken != -1)
  {
    dispatch_once(&xpcListenerProtocol_onceToken, &__block_literal_global_273);
  }

  v3 = xpcListenerProtocol_value;

  return v3;
}

void __39__LNSystemProtocol_xpcListenerProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.XPCListener"];
  v1 = xpcListenerProtocol_value;
  xpcListenerProtocol_value = v0;
}

+ (LNSystemProtocol)controlConfigurationProtocol
{
  if (controlConfigurationProtocol_onceToken != -1)
  {
    dispatch_once(&controlConfigurationProtocol_onceToken, &__block_literal_global_271);
  }

  v3 = controlConfigurationProtocol_value;

  return v3;
}

void __48__LNSystemProtocol_controlConfigurationProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ControlConfiguration"];
  v1 = controlConfigurationProtocol_value;
  controlConfigurationProtocol_value = v0;
}

+ (LNSystemProtocol)widgetConfigurationProtocol
{
  if (widgetConfigurationProtocol_onceToken != -1)
  {
    dispatch_once(&widgetConfigurationProtocol_onceToken, &__block_literal_global_269);
  }

  v3 = widgetConfigurationProtocol_value;

  return v3;
}

void __47__LNSystemProtocol_widgetConfigurationProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.WidgetConfiguration"];
  v1 = widgetConfigurationProtocol_value;
  widgetConfigurationProtocol_value = v0;
}

+ (LNSystemProtocol)undoSystemProtocol
{
  if (undoSystemProtocol_onceToken != -1)
  {
    dispatch_once(&undoSystemProtocol_onceToken, &__block_literal_global_267);
  }

  v3 = undoSystemProtocol_value;

  return v3;
}

void __38__LNSystemProtocol_undoSystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Undo"];
  v1 = undoSystemProtocol_value;
  undoSystemProtocol_value = v0;
}

+ (LNSystemProtocol)undoableProtocol
{
  if (undoableProtocol_onceToken != -1)
  {
    dispatch_once(&undoableProtocol_onceToken, &__block_literal_global_265);
  }

  v3 = undoableProtocol_value;

  return v3;
}

void __36__LNSystemProtocol_undoableProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Undoable"];
  v1 = undoableProtocol_value;
  undoableProtocol_value = v0;
}

+ (LNSystemProtocol)toggleProtocol
{
  if (toggleProtocol_onceToken != -1)
  {
    dispatch_once(&toggleProtocol_onceToken, &__block_literal_global_263);
  }

  v3 = toggleProtocol_value;

  return v3;
}

void __34__LNSystemProtocol_toggleProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Toggle"];
  v1 = toggleProtocol_value;
  toggleProtocol_value = v0;
}

+ (LNSystemProtocol)systemFrameworkProtocol
{
  if (systemFrameworkProtocol_onceToken != -1)
  {
    dispatch_once(&systemFrameworkProtocol_onceToken, &__block_literal_global_261);
  }

  v3 = systemFrameworkProtocol_value;

  return v3;
}

void __43__LNSystemProtocol_systemFrameworkProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.SystemFramework"];
  v1 = systemFrameworkProtocol_value;
  systemFrameworkProtocol_value = v0;
}

+ (LNSystemProtocol)stingProtocol
{
  if (stingProtocol_onceToken != -1)
  {
    dispatch_once(&stingProtocol_onceToken, &__block_literal_global_259);
  }

  v3 = stingProtocol_value;

  return v3;
}

void __33__LNSystemProtocol_stingProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Sting"];
  v1 = stingProtocol_value;
  stingProtocol_value = v0;
}

+ (LNSystemProtocol)startWorkoutProtocol
{
  if (startWorkoutProtocol_onceToken != -1)
  {
    dispatch_once(&startWorkoutProtocol_onceToken, &__block_literal_global_257);
  }

  v3 = startWorkoutProtocol_value;

  return v3;
}

void __40__LNSystemProtocol_startWorkoutProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.StartWorkout"];
  v1 = startWorkoutProtocol_value;
  startWorkoutProtocol_value = v0;
}

+ (LNSystemProtocol)startDiveProtocol
{
  if (startDiveProtocol_onceToken != -1)
  {
    dispatch_once(&startDiveProtocol_onceToken, &__block_literal_global_255);
  }

  v3 = startDiveProtocol_value;

  return v3;
}

void __37__LNSystemProtocol_startDiveProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.StartDive"];
  v1 = startDiveProtocol_value;
  startDiveProtocol_value = v0;
}

+ (LNSystemProtocol)snippetProtocol
{
  if (snippetProtocol_onceToken != -1)
  {
    dispatch_once(&snippetProtocol_onceToken, &__block_literal_global_253);
  }

  v3 = snippetProtocol_value;

  return v3;
}

void __35__LNSystemProtocol_snippetProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Snippet"];
  v1 = snippetProtocol_value;
  snippetProtocol_value = v0;
}

+ (LNSystemProtocol)setValueProtocol
{
  if (setValueProtocol_onceToken != -1)
  {
    dispatch_once(&setValueProtocol_onceToken, &__block_literal_global_251);
  }

  v3 = setValueProtocol_value;

  return v3;
}

void __36__LNSystemProtocol_setValueProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.SetValue"];
  v1 = setValueProtocol_value;
  setValueProtocol_value = v0;
}

+ (LNSystemProtocol)sessionStartingProtocol
{
  if (sessionStartingProtocol_onceToken[0] != -1)
  {
    dispatch_once(sessionStartingProtocol_onceToken, &__block_literal_global_249);
  }

  v3 = sessionStartingProtocol_value;

  return v3;
}

void __43__LNSystemProtocol_sessionStartingProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.SessionStarting"];
  v1 = sessionStartingProtocol_value;
  sessionStartingProtocol_value = v0;
}

+ (LNSystemProtocol)searchSystemProtocol
{
  if (searchSystemProtocol_onceToken != -1)
  {
    dispatch_once(&searchSystemProtocol_onceToken, &__block_literal_global_247);
  }

  v3 = searchSystemProtocol_value;

  return v3;
}

void __40__LNSystemProtocol_searchSystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Search"];
  v1 = searchSystemProtocol_value;
  searchSystemProtocol_value = v0;
}

+ (LNSystemProtocol)scrollProtocol
{
  if (scrollProtocol_onceToken != -1)
  {
    dispatch_once(&scrollProtocol_onceToken, &__block_literal_global_245);
  }

  v3 = scrollProtocol_value;

  return v3;
}

void __34__LNSystemProtocol_scrollProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Scroll"];
  v1 = scrollProtocol_value;
  scrollProtocol_value = v0;
}

+ (LNSystemProtocol)saveEntitySystemProtocol
{
  if (saveEntitySystemProtocol_onceToken != -1)
  {
    dispatch_once(&saveEntitySystemProtocol_onceToken, &__block_literal_global_243);
  }

  v3 = saveEntitySystemProtocol_value;

  return v3;
}

void __44__LNSystemProtocol_saveEntitySystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.SaveEntity"];
  v1 = saveEntitySystemProtocol_value;
  saveEntitySystemProtocol_value = v0;
}

+ (LNSystemProtocol)resumeWorkoutProtocol
{
  if (resumeWorkoutProtocol_onceToken != -1)
  {
    dispatch_once(&resumeWorkoutProtocol_onceToken, &__block_literal_global_241);
  }

  v3 = resumeWorkoutProtocol_value;

  return v3;
}

void __41__LNSystemProtocol_resumeWorkoutProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ResumeWorkout"];
  v1 = resumeWorkoutProtocol_value;
  resumeWorkoutProtocol_value = v0;
}

+ (LNSystemProtocol)resizeProtocol
{
  if (resizeProtocol_onceToken != -1)
  {
    dispatch_once(&resizeProtocol_onceToken, &__block_literal_global_239);
  }

  v3 = resizeProtocol_value;

  return v3;
}

void __34__LNSystemProtocol_resizeProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Resize"];
  v1 = resizeProtocol_value;
  resizeProtocol_value = v0;
}

+ (LNSystemProtocol)requiresMDMChecksProtocol
{
  if (requiresMDMChecksProtocol_onceToken != -1)
  {
    dispatch_once(&requiresMDMChecksProtocol_onceToken, &__block_literal_global_237);
  }

  v3 = requiresMDMChecksProtocol_value;

  return v3;
}

void __45__LNSystemProtocol_requiresMDMChecksProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.RequiresMDMChecks"];
  v1 = requiresMDMChecksProtocol_value;
  requiresMDMChecksProtocol_value = v0;
}

+ (LNSystemProtocol)putEntityInContainerProtocol
{
  if (putEntityInContainerProtocol_onceToken != -1)
  {
    dispatch_once(&putEntityInContainerProtocol_onceToken, &__block_literal_global_235);
  }

  v3 = putEntityInContainerProtocol_value;

  return v3;
}

void __48__LNSystemProtocol_putEntityInContainerProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.PutEntityInContainer"];
  v1 = putEntityInContainerProtocol_value;
  putEntityInContainerProtocol_value = v0;
}

+ (LNSystemProtocol)propertyUpdaterProtocol
{
  if (propertyUpdaterProtocol_onceToken != -1)
  {
    dispatch_once(&propertyUpdaterProtocol_onceToken, &__block_literal_global_233);
  }

  v3 = propertyUpdaterProtocol_value;

  return v3;
}

void __43__LNSystemProtocol_propertyUpdaterProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.PropertyUpdater"];
  v1 = propertyUpdaterProtocol_value;
  propertyUpdaterProtocol_value = v0;
}

+ (LNSystemProtocol)progressReportingProtocol
{
  if (progressReportingProtocol_onceToken != -1)
  {
    dispatch_once(&progressReportingProtocol_onceToken, &__block_literal_global_231);
  }

  v3 = progressReportingProtocol_value;

  return v3;
}

void __45__LNSystemProtocol_progressReportingProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ProgressReporting"];
  v1 = progressReportingProtocol_value;
  progressReportingProtocol_value = v0;
}

+ (LNSystemProtocol)previewEntityProtocol
{
  if (previewEntityProtocol_onceToken != -1)
  {
    dispatch_once(&previewEntityProtocol_onceToken, &__block_literal_global_229);
  }

  v3 = previewEntityProtocol_value;

  return v3;
}

void __41__LNSystemProtocol_previewEntityProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.PreviewEntity"];
  v1 = previewEntityProtocol_value;
  previewEntityProtocol_value = v0;
}

+ (LNSystemProtocol)pauseWorkoutProtocol
{
  if (pauseWorkoutProtocol_onceToken != -1)
  {
    dispatch_once(&pauseWorkoutProtocol_onceToken, &__block_literal_global_227);
  }

  v3 = pauseWorkoutProtocol_value;

  return v3;
}

void __40__LNSystemProtocol_pauseWorkoutProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.PauseWorkout"];
  v1 = pauseWorkoutProtocol_value;
  pauseWorkoutProtocol_value = v0;
}

+ (LNSystemProtocol)pasteSystemProtocol
{
  if (pasteSystemProtocol_onceToken != -1)
  {
    dispatch_once(&pasteSystemProtocol_onceToken, &__block_literal_global_225);
  }

  v3 = pasteSystemProtocol_value;

  return v3;
}

void __39__LNSystemProtocol_pasteSystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Paste"];
  v1 = pasteSystemProtocol_value;
  pasteSystemProtocol_value = v0;
}

+ (LNSystemProtocol)navigateSequentiallyProtocol
{
  if (navigateSequentiallyProtocol_onceToken != -1)
  {
    dispatch_once(&navigateSequentiallyProtocol_onceToken, &__block_literal_global_221);
  }

  v3 = navigateSequentiallyProtocol_value;

  return v3;
}

void __48__LNSystemProtocol_navigateSequentiallyProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.NavigateSequentially"];
  v1 = navigateSequentiallyProtocol_value;
  navigateSequentiallyProtocol_value = v0;
}

+ (LNSystemProtocol)moveSpatialProtocol
{
  if (moveSpatialProtocol_onceToken != -1)
  {
    dispatch_once(&moveSpatialProtocol_onceToken, &__block_literal_global_219);
  }

  v3 = moveSpatialProtocol_value;

  return v3;
}

void __39__LNSystemProtocol_moveSpatialProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.MoveSpatial"];
  v1 = moveSpatialProtocol_value;
  moveSpatialProtocol_value = v0;
}

+ (LNSystemProtocol)favoriteEntityProtocol
{
  if (favoriteEntityProtocol_onceToken != -1)
  {
    dispatch_once(&favoriteEntityProtocol_onceToken, &__block_literal_global_213);
  }

  v3 = favoriteEntityProtocol_value;

  return v3;
}

void __42__LNSystemProtocol_favoriteEntityProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.FavoriteEntity"];
  v1 = favoriteEntityProtocol_value;
  favoriteEntityProtocol_value = v0;
}

+ (LNSystemProtocol)exitMarkupProtocol
{
  if (exitMarkupProtocol_onceToken != -1)
  {
    dispatch_once(&exitMarkupProtocol_onceToken, &__block_literal_global_211);
  }

  v3 = exitMarkupProtocol_value;

  return v3;
}

void __38__LNSystemProtocol_exitMarkupProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ExitMarkup"];
  v1 = exitMarkupProtocol_value;
  exitMarkupProtocol_value = v0;
}

+ (LNSystemProtocol)entityUpdatingProtocol
{
  if (entityUpdatingProtocol_onceToken != -1)
  {
    dispatch_once(&entityUpdatingProtocol_onceToken, &__block_literal_global_209);
  }

  v3 = entityUpdatingProtocol_value;

  return v3;
}

void __42__LNSystemProtocol_entityUpdatingProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.EntityUpdating"];
  v1 = entityUpdatingProtocol_value;
  entityUpdatingProtocol_value = v0;
}

+ (LNSystemProtocol)enterMarkupProtocol
{
  if (enterMarkupProtocol_onceToken != -1)
  {
    dispatch_once(&enterMarkupProtocol_onceToken, &__block_literal_global_207);
  }

  v3 = enterMarkupProtocol_value;

  return v3;
}

void __39__LNSystemProtocol_enterMarkupProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.EnterMarkup"];
  v1 = enterMarkupProtocol_value;
  enterMarkupProtocol_value = v0;
}

+ (LNSystemProtocol)duplicateEntitySystemProtocol
{
  if (duplicateEntitySystemProtocol_onceToken != -1)
  {
    dispatch_once(&duplicateEntitySystemProtocol_onceToken, &__block_literal_global_205);
  }

  v3 = duplicateEntitySystemProtocol_value;

  return v3;
}

void __49__LNSystemProtocol_duplicateEntitySystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.DuplicateEntity"];
  v1 = duplicateEntitySystemProtocol_value;
  duplicateEntitySystemProtocol_value = v0;
}

+ (LNSystemProtocol)deleteEntitySystemProtocol
{
  if (deleteEntitySystemProtocol_onceToken != -1)
  {
    dispatch_once(&deleteEntitySystemProtocol_onceToken, &__block_literal_global_203);
  }

  v3 = deleteEntitySystemProtocol_value;

  return v3;
}

void __46__LNSystemProtocol_deleteEntitySystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.DeleteEntity"];
  v1 = deleteEntitySystemProtocol_value;
  deleteEntitySystemProtocol_value = v0;
}

+ (LNSystemProtocol)cutSystemProtocol
{
  if (cutSystemProtocol_onceToken != -1)
  {
    dispatch_once(&cutSystemProtocol_onceToken, &__block_literal_global_201);
  }

  v3 = cutSystemProtocol_value;

  return v3;
}

void __37__LNSystemProtocol_cutSystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Cut"];
  v1 = cutSystemProtocol_value;
  cutSystemProtocol_value = v0;
}

+ (LNSystemProtocol)cutEntityProtocol
{
  if (cutEntityProtocol_onceToken != -1)
  {
    dispatch_once(&cutEntityProtocol_onceToken, &__block_literal_global_199);
  }

  v3 = cutEntityProtocol_value;

  return v3;
}

void __37__LNSystemProtocol_cutEntityProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.CutEntity"];
  v1 = cutEntityProtocol_value;
  cutEntityProtocol_value = v0;
}

+ (LNSystemProtocol)createEntitySystemProtocol
{
  if (createEntitySystemProtocol_onceToken != -1)
  {
    dispatch_once(&createEntitySystemProtocol_onceToken, &__block_literal_global_197);
  }

  v3 = createEntitySystemProtocol_value;

  return v3;
}

void __46__LNSystemProtocol_createEntitySystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.CreateEntity"];
  v1 = createEntitySystemProtocol_value;
  createEntitySystemProtocol_value = v0;
}

+ (LNSystemProtocol)copySystemProtocol
{
  if (copySystemProtocol_onceToken[0] != -1)
  {
    dispatch_once(copySystemProtocol_onceToken, &__block_literal_global_195);
  }

  v3 = copySystemProtocol_value;

  return v3;
}

void __38__LNSystemProtocol_copySystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Copy"];
  v1 = copySystemProtocol_value;
  copySystemProtocol_value = v0;
}

+ (LNSystemProtocol)copyEntityProtocol
{
  if (copyEntityProtocol_onceToken != -1)
  {
    dispatch_once(&copyEntityProtocol_onceToken, &__block_literal_global_193);
  }

  v3 = copyEntityProtocol_value;

  return v3;
}

void __38__LNSystemProtocol_copyEntityProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.CopyEntity"];
  v1 = copyEntityProtocol_value;
  copyEntityProtocol_value = v0;
}

+ (LNSystemProtocol)conditionallyEnabledProtocol
{
  if (conditionallyEnabledProtocol_onceToken != -1)
  {
    dispatch_once(&conditionallyEnabledProtocol_onceToken, &__block_literal_global_191);
  }

  v3 = conditionallyEnabledProtocol_value;

  return v3;
}

void __48__LNSystemProtocol_conditionallyEnabledProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ConditionallyEnabled"];
  v1 = conditionallyEnabledProtocol_value;
  conditionallyEnabledProtocol_value = v0;
}

+ (LNSystemProtocol)closeEntityProtocol
{
  if (closeEntityProtocol_onceToken != -1)
  {
    dispatch_once(&closeEntityProtocol_onceToken, &__block_literal_global_189);
  }

  v3 = closeEntityProtocol_value;

  return v3;
}

void __39__LNSystemProtocol_closeEntityProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.CloseEntity"];
  v1 = closeEntityProtocol_value;
  closeEntityProtocol_value = v0;
}

+ (LNSystemProtocol)changeBinarySettingSystemProtocol
{
  if (changeBinarySettingSystemProtocol_onceToken != -1)
  {
    dispatch_once(&changeBinarySettingSystemProtocol_onceToken, &__block_literal_global_187);
  }

  v3 = changeBinarySettingSystemProtocol_value;

  return v3;
}

void __53__LNSystemProtocol_changeBinarySettingSystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ChangeBinarySetting"];
  v1 = changeBinarySettingSystemProtocol_value;
  changeBinarySettingSystemProtocol_value = v0;
}

+ (LNSystemProtocol)cancelProtocol
{
  if (cancelProtocol_onceToken != -1)
  {
    dispatch_once(&cancelProtocol_onceToken, &__block_literal_global_185);
  }

  v3 = cancelProtocol_value;

  return v3;
}

void __34__LNSystemProtocol_cancelProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Cancel"];
  v1 = cancelProtocol_value;
  cancelProtocol_value = v0;
}

void __42__LNSystemProtocol_audioRecordingProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.AudioRecording"];
  v1 = audioRecordingProtocol_value;
  audioRecordingProtocol_value = v0;
}

void __41__LNSystemProtocol_audioStartingProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.AudioStarting"];
  v1 = audioStartingProtocol_value;
  audioStartingProtocol_value = v0;
}

- (int64_t)kind
{
  v3 = [objc_opt_class() systemProtocolKindsByIdentifier];
  v4 = [(LNSystemProtocol *)self identifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 23;
  }

  return v6;
}

+ (id)ofKind:(int64_t)a3
{
  if (a3 == 23)
  {
    v3 = 0;
  }

  else
  {
    if (a3 == 13)
    {
      v4 = 14;
    }

    else
    {
      v4 = a3;
    }

    v5 = [a1 systemProtocolKindsByIdentifier];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    v7 = [v5 allKeysForObject:v6];
    v8 = [v7 firstObject];

    if (v8)
    {
      v3 = [LNSystemProtocol protocolWithIdentifier:v8];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

+ (LNSystemProtocol)protocolWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 protocolOrNilWithIdentifier:v4];
  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:@"InitNotImplemented" format:{@"%@ is not a valid LNSystemProtocolIdentifier", v4}];
  }

  return v5;
}

+ (id)systemProtocolKindsByIdentifier
{
  v6[21] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.link.systemProtocol.ChangeBinarySetting";
  v5[1] = @"com.apple.link.systemProtocol.DeleteEntity";
  v6[0] = &unk_1F02FF180;
  v6[1] = &unk_1F02FF198;
  v5[2] = @"com.apple.link.systemProtocol.DuplicateEntity";
  v5[3] = @"com.apple.link.systemProtocol.OpenEntity";
  v6[2] = &unk_1F02FF1B0;
  v6[3] = &unk_1F02FF1C8;
  v5[4] = @"com.apple.link.systemProtocol.SaveEntity";
  v5[5] = @"com.apple.link.systemProtocol.Undo";
  v6[4] = &unk_1F02FF1E0;
  v6[5] = &unk_1F02FF1F8;
  v5[6] = @"com.apple.link.systemProtocol.CreateEntity";
  v5[7] = @"com.apple.link.systemProtocol.Search";
  v6[6] = &unk_1F02FF210;
  v6[7] = &unk_1F02FF228;
  v5[8] = @"com.apple.link.systemProtocol.Copy";
  v5[9] = @"com.apple.link.systemProtocol.Paste";
  v6[8] = &unk_1F02FF240;
  v6[9] = &unk_1F02FF258;
  v5[10] = @"com.apple.link.systemProtocol.Cut";
  v5[11] = @"com.apple.link.systemProtocol.PutEntityInContainer";
  v6[10] = &unk_1F02FF270;
  v6[11] = &unk_1F02FF288;
  v5[12] = @"com.apple.link.systemProtocol.FavoriteEntity";
  v5[13] = @"com.apple.link.systemProtocol.CloseEntity";
  v6[12] = &unk_1F02FF2A0;
  v6[13] = &unk_1F02FF2B8;
  v5[14] = @"com.apple.link.systemProtocol.Sting";
  v5[15] = @"com.apple.link.systemProtocol.Cancel";
  v6[14] = &unk_1F02FF2D0;
  v6[15] = &unk_1F02FF2E8;
  v5[16] = @"com.apple.link.systemProtocol.NavigateSequentially";
  v5[17] = @"com.apple.link.systemProtocol.MoveSpatial";
  v6[16] = &unk_1F02FF300;
  v6[17] = &unk_1F02FF318;
  v5[18] = @"com.apple.link.systemProtocol.Scroll";
  v5[19] = @"com.apple.link.systemProtocol.Resize";
  v6[18] = &unk_1F02FF330;
  v6[19] = &unk_1F02FF348;
  v5[20] = @"com.apple.link.systemProtocol.Zoom";
  v6[20] = &unk_1F02FF360;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:21];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end